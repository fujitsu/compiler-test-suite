      logical(1)::l1
      logical(2)::l2
      logical(4)::l4
      logical(8)::l8
      l1=.true.
      l2=.true.
      l4=.true.
      l8=.true.
      call sub(l1,l2,l4,l8)
      if ((.not.l1).or.(.not.l2).or.(.not.l4).or.(.not.l8)) print *,"fail"
      print *,'pass'
      end

      subroutine sub(l1,l2,l4,l8)
      logical(1)::l1
      logical(2)::l2
      logical(4)::l4
      logical(8)::l8
!$omp parallel private(l1,l2,l4,l8)
!$omp single
      l1=.false.
      l2=.false.
      l4=.false.
      l8=.false.
!$omp end single copyprivate(l1,l2,l4,l8)
      if (l1.or.l2.or.l4.or.l8) print *,"fail"
!$omp end parallel
      end subroutine sub
