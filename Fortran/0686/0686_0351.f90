    program ompv2
      integer(4)::a,b
!$omp threadprivate(a)

!$omp parallel private(b)
!$omp single
      b=1
!$omp end single copyprivate(a,b)
      if (b/=1) print *,"fail"
      call sub(a,b)
!$omp end parallel
      print *,'pass'
    end

    subroutine sub(a,b)
      integer(4)::a,b
!$omp single
!$omp end single copyprivate(a,b)
      if (b/=1) print *,"fail"
    end subroutine sub
