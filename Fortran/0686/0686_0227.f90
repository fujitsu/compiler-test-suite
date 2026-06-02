    module mod
      logical(1),dimension(3)::l1=.true.
      logical(2),dimension(3)::l2=.true.
      logical(4),dimension(3)::l4=.true.
      logical(8),dimension(3)::l8=.true.
    end module mod

      call sub()
      print *,'pass'
    end

    subroutine sub()
      use mod
!$omp parallel private(l1,l2,l4,l8)
!$omp single
      l1=.false.
      l2=.false.
      l4=.false.
      l8=.false.
!$omp end single copyprivate(l1,l2,l4,l8)
      if (any(l1)) print *,"fail"
      if (any(l2)) print *,"fail"
      if (any(l4)) print *,"fail"
      if (any(l8)) print *,"fail"
!$omp end parallel
      if (.not. all(l1)) print *,"fail"
      if (.not. all(l2)) print *,"fail"
      if (.not. all(l4)) print *,"fail"
      if (.not. all(l8)) print *,"fail"
    end subroutine sub
