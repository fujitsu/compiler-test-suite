      common /com/ i
!$omp threadprivate(/com/)
      i = 100
!$omp parallel copyin(/com/)
      if (i/=100) print *,"fail"
!$omp end parallel
      print *,'pass'
      end
