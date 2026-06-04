    program ompv2
      logical(1),dimension(3,3,2)::l1=.true.
      logical(2),dimension(3,3)::l2=.true.
      logical(4),dimension(2,1,2)::l4=.true.
      logical(8),dimension(2,2,1)::l8=.true.

      call sub1(l1,l2,l4,l8)
      if (.not. all(l1)) print *,'fail'
      if (.not. all(l2)) print *,'fail'
      if (.not. all(l4)) print *,'fail'
      if (.not. all(l8)) print *,'fail'
!$omp parallel private(l1,l2,l4,l8)
      call sub2(l1,l2,l4,l8,3,2,1)
!$omp end parallel
      if (.not. all(l1)) print *,'fail'
      if (.not. all(l2)) print *,'fail'
      if (.not. all(l4)) print *,'fail'
      if (.not. all(l8)) print *,'fail'
      call sub3(3,2,1)
      print *,'pass'
    end program

    subroutine sub1(l1,l2,l4,l8)
      logical(1),dimension(3,3,2)::l1
      logical(2),dimension(3,3)::l2
      logical(4),dimension(2,1,2)::l4
      logical(8),dimension(2,2,1)::l8
!$omp parallel private(l1,l2,l4,l8)
      l1=.true.
      l2=.true.
      l4=reshape((/.true.,.false.,.true.,.false./),(/2,1,2/))
      l8=reshape((/.true.,.false.,.true.,.false./),(/2,2,1/))
!$omp single
      l1=.false.
      l2=.false.
      l4=.false.
      l8=.false.
!$omp end single copyprivate(l1,l2,l4,l8)
      if (any(l1).or.any(l2).or.any(l4).or.any(l8)) print *,'fail'
!$omp end parallel
    end subroutine sub1

    subroutine sub2(l1,l2,l4,l8,len3,len2,len1)
      logical(1),dimension(len3,len3,len2)::l1
      logical(2),dimension(len3,len3     )::l2
      logical(4),dimension(len2,len1,len2)::l4
      logical(8),dimension(len2,len2,len1)::l8
      l1=.true.
      l2=.true.
      l4=reshape((/.true.,.false.,.true.,.false./),(/2,1,2/))
      l8=reshape((/.true.,.false.,.true.,.false./),(/2,2,1/))
!$omp single
      l1=.false.
      l2=.false.
      l4=.false.
      l8=.false.
!$omp end single copyprivate(l1,l2,l4,l8)
      if (any(l1).or.any(l2).or.any(l4).or.any(l8)) print *,'fail'
    end subroutine sub2

    subroutine sub3(len3,len2,len1)
      logical(1),dimension(len3,len3,len2)::l1
      logical(2),dimension(3   ,3        )::l2=.true.
      logical(4),dimension(len2,len1,2   )::l4
      logical(8),dimension(2   ,2   ,1   )::l8=.true.
      l1=.true.
      l4=.true.
!$omp parallel private(l1,l2,l4,l8)
      l1=.true.
      l2=.true.
      l4=reshape((/.true.,.false.,.true.,.false./),(/len2,len1,2/))
      l8=reshape((/.true.,.false.,.true.,.false./),(/2,2,1/))
!$omp single
      l1=.false.
      l2=.false.
      l4=.false.
      l8=.false.
!$omp end single copyprivate(l1,l2,l4,l8)
      if (any(l1).or.any(l2).or.any(l4).or.any(l8)) print *,'fail'
!$omp end parallel
      if (.not. all(l1)) print *,'fail'
      if (.not. all(l2)) print *,'fail'
      if (.not. all(l4)) print *,'fail'
      if (.not. all(l8)) print *,'fail'
    end subroutine sub3
