      common /com/ i
!$omp threadprivate(/com/)
!$omp parallel copyin(/com/)
      if (i/=100) print *,"fail"
!$omp single
      i=1000
!$omp end single copyprivate(/com/)
      if (i/=1000) print *,"fail"
!$omp end parallel 
      if (i/=1000) print *,"fail"
      print *,'pass'
      end

      block data
      common /com/ i
      data i /100/
      end
