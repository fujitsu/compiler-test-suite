      call sub()
      print *,'pass'
    end

    subroutine sub()
      logical(1),dimension(2,2)::l1
      logical(2),dimension(2,2)::l2
      logical(4),dimension(2,1)::l4
      logical(8),dimension(2,1)::l8
      l1=.false.
      l2=.false.
      l4=.false.
      l8=.false.
!$omp parallel private(l1,l2,l4,l8)
      l1=reshape( (/.true.,.false.,.true.,.false./) , (/2,2/) )
      l2=reshape( (/.true.,.false.,.true.,.false./) , (/2,2/) )
      l4=reshape( (/.true.,.false./) , (/2,1/) )
      l8=reshape( (/.true.,.false./) , (/2,1/) )
!$omp single
      l1=reshape( (/.false.,.true.,.true.,.false./) , (/2,2/) )
      l2=reshape( (/.false.,.true.,.true.,.false./) , (/2,2/) )
      l4=reshape( (/.false.,.true./) , (/2,1/) )
      l8=reshape( (/.false.,.true./) , (/2,1/) )
!$omp end single copyprivate(l1,l2,l4,l8)
      if (l1(1,1).or..not.l1(2,1).or..not.l1(1,2).or.l1(2,2)) print *,"fail"
      if (l2(1,1).or..not.l2(2,1).or..not.l2(1,2).or.l2(2,2)) print *,"fail"
      if (l4(1,1).or..not.l4(2,1)) print *,"fail"
      if (l8(1,1).or..not.l8(2,1)) print *,"fail"
!$omp end parallel
      if (any(l1).or.any(l2).or.all(l4).or.all(l8)) print *,"fail"
    end subroutine sub
