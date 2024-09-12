      program main
      integer*4 ib(50), iw(50)
      iw = 0
!$omp parallel
      forall(i=1:50)
         where(iw==0) iw=iw+11
         ib(i)=1
      end forall
!$omp do
      do i=1,50
      enddo
!$omp end do
!$omp end parallel
      print *,'pass'
      end
