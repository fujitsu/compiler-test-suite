      program main
      integer*4 ia, ib(50), ic(50), ier
      integer*4 :: loop=50
      ia = 99
      ib = 0
!$omp parallel
!$omp do firstprivate(ia)
      do i=1,loop
          call sub(ia, ib, i)
      enddo
!$omp end do
!$omp end parallel
      ic = 0
      do i=1,loop
          ic(i) = ia * i
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
      write(*,*) "      do firstprivate(ia) -----"
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

      subroutine sub(ia, ib, i)
      integer*4 ia, ib(50), i
      ib(i) = ia * i
      return
      end
