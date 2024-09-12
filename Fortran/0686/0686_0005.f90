      common /com/ i,j,k,l
!$omp threadprivate(/com/)

!$omp parallel copyin(/com/)
!$omp single
!$omp parallel copyin(/com/)

!$omp end parallel
!$omp end single copyprivate(i,j,k,l)
      call sub()
!$omp end parallel
      print *,'pass'
      end

      subroutine sub()
      common /com/ i,j,k,l
!$omp threadprivate(/com/)

!$omp single
!$omp parallel copyin(/com/)

!$omp end parallel
!$omp end single copyprivate(i,j,k,l)
      end subroutine
