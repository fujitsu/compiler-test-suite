    module mod
      complex( 4),target ,dimension(1)::c041
      complex( 4),target ,dimension(3)::c043
      complex( 8),target ,dimension(1)::c081
      complex( 8),target ,dimension(3)::c083
      complex(16),target ,dimension(1)::c161
      complex(16),target ,dimension(2)::c163
     contains
      subroutine sub0()
        c041=(1.0e0,-1.0e0)
        c081=(1.0d0,-1.0d0)
        c161=(1.0q0,-1.0q0)
        c043=(/(1.1e1,-1.1e1),(1.2e1,-1.2e1),(1.3e1,-1.3e1)/)
        c083=(/(1.1d2,-1.1d2),(1.2d2,-1.2d2),(1.3d2,-1.3d2)/)
        c163=(/(1.1q3,-1.1q3),(1.2q3,-1.2q3)/)
      end subroutine sub0

      subroutine sub1(p_c04,p_c08,p_c16)
        complex( 4),allocatable,dimension(:)::p_c04
        complex( 8),allocatable,dimension(:)::p_c08
        complex(16),allocatable,dimension(:)::p_c16
  !$omp parallel private(p_c04,p_c08,p_c16)
        allocate(p_c04(3))
        allocate(p_c08(3))
        allocate(p_c16(2))
  !$omp single
        p_c04=c043
        p_c08=c083
        p_c16=c163
  !$omp end single copyprivate(p_c04,p_c08,p_c16)
        if (.not.allocated(p_c04)) print *,"fail"
        if (.not.allocated(p_c08)) print *,"fail"
        if (.not.allocated(p_c16)) print *,"fail"
        if (any( p_c04 /= (/(1.1e1,-1.1e1),(1.2e1,-1.2e1),(1.3e1,-1.3e1)/) )) &
                           print *,"fail"
        if (any( p_c08 /= (/(1.1d2,-1.1d2),(1.2d2,-1.2d2),(1.3d2,-1.3d2)/) )) &
                           print *,"fail"
        if (any( p_c16 /= (/(1.1q3,-1.1q3),(1.2q3,-1.2q3)               /) )) &
                           print *,"fail"
        deallocate(p_c04)
        deallocate(p_c08)
        deallocate(p_c16)
  !$omp end parallel
      end subroutine sub1

      subroutine sub2(p_c04,p_c08,p_c16)
        complex( 4),allocatable,dimension(:)::p_c04
        complex( 8),allocatable,dimension(:)::p_c08
        complex(16),allocatable,dimension(:)::p_c16
        allocate(p_c04(3))
        allocate(p_c08(3))
        allocate(p_c16(2))
  !$omp single
        p_c04=c043
        p_c08=c083
        p_c16=c163
  !$omp end single copyprivate(p_c04,p_c08,p_c16)
        if (.not.allocated(p_c04)) print *,"fail"
        if (.not.allocated(p_c08)) print *,"fail"
        if (.not.allocated(p_c16)) print *,"fail"
        if (any( p_c04 /= (/(1.1e1,-1.1e1),(1.2e1,-1.2e1),(1.3e1,-1.3e1)/) )) &
                           print *,"fail"
        if (any( p_c08 /= (/(1.1d2,-1.1d2),(1.2d2,-1.2d2),(1.3d2,-1.3d2)/) )) &
                           print *,"fail"
        if (any( p_c16 /= (/(1.1q3,-1.1q3),(1.2q3,-1.2q3)               /) )) &
                           print *,"fail"
        deallocate(p_c04)
        deallocate(p_c08)
        deallocate(p_c16)
      end subroutine sub2
    end module mod

    program abc
     use mod
      complex( 4),allocatable,dimension(:)::p_c04
      complex( 8),allocatable,dimension(:)::p_c08
      complex(16),allocatable,dimension(:)::p_c16
      call sub0()
      allocate(p_c04(1))
      allocate(p_c08(1))
      allocate(p_c16(1))
      p_c04=c041
      p_c08=c081
      p_c16=c161
      call sub1(p_c04,p_c08,p_c16)
!$omp parallel private(p_c04,p_c08,p_c16)
      call sub2(p_c04,p_c08,p_c16)
!$omp end parallel
      if (.not.allocated(p_c04)) print *,"fail"
      if (.not.allocated(p_c08)) print *,"fail"
      if (.not.allocated(p_c16)) print *,"fail"
      if (any( p_c04 /= (1.0e0,-1.0e0) )) print *,"fail"
      if (any( p_c08 /= (1.0d0,-1.0d0) )) print *,"fail"
      if (any( p_c16 /= (1.0q0,-1.0q0) )) print *,"fail"
      deallocate(p_c04)
      deallocate(p_c08)
      deallocate(p_c16)
      print *,'pass'
    end program abc
