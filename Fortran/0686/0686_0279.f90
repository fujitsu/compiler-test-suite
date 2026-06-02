    module mod
      logical(1),dimension(3)::l1=.true.
      logical(2),dimension(3)::l2=.true.
      logical(4),dimension(1)::l4=.true.
      logical(8),dimension(2)::l8=.true.
!$omp threadprivate(l1,l2,l4,l8)
    end module mod

      call sub()
      print *,'pass'
    end

    subroutine sub()
      use mod
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
