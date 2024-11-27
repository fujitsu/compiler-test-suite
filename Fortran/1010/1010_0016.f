c
c
c
c
c
c
      program main
      integer*4 ib(50), ic(50), ier
      integer*4 :: loop=50
      integer*4 ma, mb(50)
      common /com1/ ma, mb
c
      ib = 0
      ma = 99
      do i=1,loop
          mb(i) = i
      enddo
c
!$omp parallel
!$omp do firstprivate(/com1/)
      do i=1,loop
          ib(i) = ma * mb(i)
      enddo
!$omp end do
!$omp end parallel
c
      ic = 0
      do i=1,loop
          ic(i) = ma * i
      enddo
      ier = 0
      do i=1,loop
          if (ib(i).ne.ic(i)) then
              write(*,*) "i=",i," ib(i)=",ib(i)," ic(i)=",ic(i)
              ier=ier+1
          endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do firstprivate(/com1/) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  FIRSTPRIVATE clause is not active"
         write(*,*) "     ier=",ier
         write(*,*) "     ib=",ib
         write(*,*) "     ic=",ic
      endif
      stop
      end

