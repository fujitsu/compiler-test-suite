      program main
      integer,external :: OMP_GET_THREAD_NUM

!$omp parallel
      i = 555
!$omp do lastprivate(i)
      do i = 1,2
      end do

!$omp single
      if (i .ne. 3) print *," +++ ompfe1009 : NG +++ ",i
!$omp endsingle
!$omp end parallel
      print *,"OK"

      end
