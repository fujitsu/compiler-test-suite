    module mod
      logical(1)::l1
      logical(2)::l2
      logical(4)::l4
      logical(8)::l8
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
      if (l1.or.l2.or.l4.or.l8) print *,"fail"
!$omp end parallel
      if (l1.or.l2.or.l4.or.l8) print *,"fail"
    end subroutine sub

    block data
      logical(1)::l1
      logical(2)::l2
      logical(4)::l4
      logical(8)::l8
      common /com/ l8,l4,l2,l1
!$omp threadprivate(/com/)
      data l1 /.true./
      data l2 /.true./
      data l4 /.true./
      data l8 /.true./
    end block data
