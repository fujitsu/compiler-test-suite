      common /com/ i
!$omp threadprivate(/com/)
      integer OMP_GET_THREAD_NUM

      i = 100
!$omp parallel copyin(/com/)
      if (i/=100) print *,"fail"
!$omp end parallel

!$omp parallel
      i = OMP_GET_THREAD_NUM()
!$omp end parallel

!$omp parallel private(k)
      k = OMP_GET_THREAD_NUM()
      if (i/=k) print *,i,k 
!$omp end parallel
      print *,'pass'
      end
