      call sub()
      print *,'pass'
      contains
        subroutine sub()
        logical(1),save::l1
        logical(2),save::l2
        logical(4),save::l4
        logical(8),save::l8
  !$omp threadprivate(l1,l2,l4,l8)
        l1=.true.
        l2=.true.
        l4=.true.
        l8=.true.
  !$omp parallel
  !$omp single
        l1=.false.
        l2=.false.
        l4=.false.
        l8=.false.
  !$omp end single copyprivate(l1,l2,l4,l8)
        if (l1.or.l2.or.l4.or.l8) print *,"fail"
  !$omp end parallel
        if (l1.or.l2.or.l4.or.l8) print *,"fail"
        end subroutine sub
      end
