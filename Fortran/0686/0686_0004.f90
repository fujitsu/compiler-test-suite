      common /com/ i,j,k,l
!$omp threadprivate(/com/)

!$omp parallel
!$omp single
!$omp parallel
!$omp single
!$omp end single copyprivate(/com/)
!$omp end parallel
!$omp end single copyprivate(i,j,k,l)
!$omp end parallel
      print *,'pass'
      end
