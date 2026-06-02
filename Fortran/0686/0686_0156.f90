      call sub()
      print *,'pass'
    end

    subroutine sub()
      logical(1),dimension(2)::l1
      logical(2),dimension(2)::l2
      logical(4),dimension(2)::l4
      logical(8),dimension(2)::l8
      l1=.false.
      l2=.false.
      l4=.false.
      l8=.false.
!$omp parallel private(l1,l2,l4,l8)
      l1=(/.true.,.false./)
      l2=(/.true.,.false./)
      l4=(/.true.,.false./)
      l8=(/.true.,.false./)
!$omp single
      l1=(/.false.,.true./)
      l2=(/.false.,.true./)
      l4=(/.false.,.true./)
      l8=(/.false.,.true./)
!$omp end single copyprivate(l1,l2,l4,l8)
      if (l1(1).or.l2(1).or.l4(1).or.l8(1)) print *,"fail"
      if (.not.l1(2).or..not.l2(2).or..not.l4(2).or..not.l8(2)) print *,"fail"
!$omp end parallel
      if (any(l1).or.any(l2).or.all(l4).or.all(l8)) print *,"fail"
    end subroutine sub
