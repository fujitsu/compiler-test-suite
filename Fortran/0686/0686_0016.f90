      integer(4),external::OMP_GET_THREAD_NUM
      call OMP_SET_DYNAMIC(.false.)
      call OMP_SET_NUM_THREADS(2)
      i=100
!$omp parallel default(shared)
      i=1
!$omp do schedule(static,5) 
      do i=1,10
      enddo
!$omp enddo
        if (i/=1) print *,i
!$omp end parallel
      if (i/=1) print *,i
      print *,'pass'
      end
