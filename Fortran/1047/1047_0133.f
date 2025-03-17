      program main
      integer*4 ia, ib(50), ic(50), ier
      integer*4 :: loop=50
      ia = 3
      do i=1,loop
          ib(i) = (i-mod(i,30))*(-1)**i
      enddo
!$omp parallel
      call sub(ia, ib, ic, loop)
!$omp end parallel
      ier = 0
      do i=1,loop
          if (ic(i).ne.ia+ib(i)) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do firstprivate(ia) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  FIRSTPRIVATE clause is not active"
         write(*,*) "     ier=",ier
         write(*,*) "     ib=",ib
         write(*,*) "     ic=",ic
      end if
      stop
      end

      subroutine sub(ia, ib, ic, loop)
      integer*4 ia, ib(50), ic(50)
      integer*4 loop
!$omp do firstprivate(ib)
      do i=1,loop
          ic(i) = ia + ib(i)
      enddo
!$omp end do
      return
      end
