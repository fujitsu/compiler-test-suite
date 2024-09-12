      integer(4)::a,b
!$omp threadprivate(a,b)

!$omp parallel
!$omp single
!$omp end single copyprivate(a,b)
!$omp end parallel
      print *,'pass'
      end
