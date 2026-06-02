      call sub()
      print *,'pass'
      contains
        subroutine sub()
        logical(1),save,dimension(3)::l1
        logical(2),save,dimension(3)::l2
        logical(4),save,dimension(2)::l4
        logical(8),save,dimension(1)::l8
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
        if (any(l1).or.any(l2).or.any(l4).or.any(l8)) print *,"fail"
  !$omp end parallel
        if (any(l1).or.any(l2).or.any(l4).or.any(l8)) print *,"fail"
        end subroutine sub
      end
