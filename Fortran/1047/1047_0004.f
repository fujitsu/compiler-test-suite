      program main
      integer*4 ia, ib(50), ic(50), ier
      integer*4 :: loop=50
      ia = 3
      do i=1,loop
          ib(i) = (i-mod(i,30))*(-1)**i
      enddo
!$omp parallel do firstprivate(ib)
      do i=1,loop
          ic(i) = ia + ib(i)
      enddo
!$omp end parallel do
      ier = 0
      do i=1,loop
          if (ic(i).ne.ia+ib(i)) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel do firstprivate(ia) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  FIRSTPRIVATE clause is not active"
         write(*,*) "     ib=",ib
         write(*,*) "     ic=",ic
         write(*,*) "     ier=",ier
      endif
      stop
      end

