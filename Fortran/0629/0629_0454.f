      program main
      integer*4 ib(50)
      integer*4 :: loop=50
!$omp parallel
      call sub(ib, loop)
!$omp end parallel
      stop
      end

      subroutine sub(ib, loop)
      integer*4 ib(50)
      integer*4 loop
!$omp do
      do j=1, loop
          ib(j) = j
      end do
!$omp end do
      write(*,*)"ib=",ib
      return
      end
