    module mod0
       real( 4),allocatable,dimension(:)::p_r04
       real( 8),allocatable,dimension(:)::p_r08
       real(16),allocatable,dimension(:,:)::p_r16
!$omp threadprivate(p_r04,p_r08,p_r16)
    end module mod0

    module mod
     use mod0
      real( 4),target,dimension(1)::r041=(/1.0e0/)
      real( 4),target,dimension(3)::r043=(/1.0e2,1.1e2,1.2e2/)
      real( 8),target,dimension(1)::r081=(/1.0d0/)
      real( 8),target,dimension(3)::r083=(/1.0d3,1.1d3,1.2d3/)
      real(16),target,dimension(1)::r161=(/1.0q0/)
     real(16),target,dimension(3,1)::r163=reshape((/1.0q4,1.1q4,1.2q4/),(/3,1/))
     contains

      subroutine sub1()
  !$omp parallel
        allocate(p_r04(3))
        allocate(p_r08(3))
        allocate(p_r16(3,1))
        p_r04=r043
        p_r08=r083
        p_r16=r163
  !$omp single
        p_r04=p_r04+1.0e1
        p_r08=p_r08+1.0e2
        p_r16=p_r16+1.0e3
  !$omp end single copyprivate(p_r04,p_r08,p_r16)
        if (.not. allocated(p_r04)) print *,"fail"
        if (.not. allocated(p_r08)) print *,"fail"
        if (.not. allocated(p_r16)) print *,"fail"
        if (any( p_r04 /= (/1.1e2,1.2e2,1.3e2/) )) print *,"fail"
        if (any( p_r08 /= (/1.1d3,1.2d3,1.3d3/) )) print *,"fail"
        if (any( pack(p_r16,mask=.true.) /= (/1.1q4,1.2q4,1.3q4/) )) print *,"fail"
        deallocate(p_r04,p_r08,p_r16)
  !$omp end parallel
      end subroutine sub1

    end module mod

    program abc
     use mod
      call sub1()
!$omp parallel
      allocate(p_r04(3))
      allocate(p_r08(3))
      allocate(p_r16(3,1))
      p_r04=r043
      p_r08=r083
      p_r16=r163
      call sub2()
      if (.not. allocated(p_r04)) print *,"fail"
      if (.not. allocated(p_r08)) print *,"fail"
      if (.not. allocated(p_r16)) print *,"fail"
      if (any( p_r04 /= (/1.1e2,1.2e2,1.3e2/) )) print *,"fail"
      if (any( p_r08 /= (/1.1d3,1.2d3,1.3d3/) )) print *,"fail"
      if (any( p_r16 /= reshape((/1.1q4,1.2q4,1.3q4/),(/3,1/)) )) print *,"fail"
!$omp barrier
      deallocate(p_r04,p_r08,p_r16)
!$omp end parallel
      if (allocated(p_r04)) print *,"fail"
      if (allocated(p_r08)) print *,"fail"
      if (allocated(p_r16)) print *,"fail"
      print *,'pass'
    end program abc

    subroutine sub2()
     use mod
!$omp single
      p_r04=p_r04+1.0e1
      p_r08=p_r08+1.0e2
      p_r16=p_r16+1.0e3
!$omp end single copyprivate(p_r04,p_r08,p_r16)
    end subroutine sub2
