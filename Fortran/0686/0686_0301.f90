    block data
      logical(1),dimension(3,2,2)::l1=.true.
      logical(2),dimension(3)::l2=.true.
      logical(4),dimension(2,2)::l4=.true.
      logical(8),dimension(2)::l8=.true.
      common /com/ l8,l4,l2,l1
!$omp threadprivate(/com/)
    end block data

    module mod
      logical(1),dimension(3,2,2)::l1
      logical(2),dimension(3)::l2
      logical(4),dimension(2,2)::l4
      logical(8),dimension(2)::l8
      common /com/ l8,l4,l2,l1
!$omp threadprivate(/com/)
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
