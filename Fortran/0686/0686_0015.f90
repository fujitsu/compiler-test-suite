      integer(4),external::OMP_GET_THREAD_NUM
      call OMP_SET_DYNAMIC(.false.)
      call OMP_SET_NUM_THREADS(2)
      i=100
!$omp parallel private(i)
      i=1
!$omp do schedule(static,5)
      do i=1,10
      enddo
!$omp enddo
      if (OMP_GET_THREAD_NUM()==0) then
        if (i/=6) print *,i
      else
        if (i/=11) print *,i
      endif
!$omp end parallel
      if (i/=100) print *,i
      print *,'pass'
      end
