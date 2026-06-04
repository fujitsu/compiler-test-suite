    module mod
      complex( 4),pointer,dimension(:,:)::p_c04
      complex( 8),pointer,dimension(:)::p_c08
      complex(16),pointer,dimension(:)::p_c16
      complex( 4),target,dimension(4:5,3:5)::c041,c042,c043
      complex( 8),target,dimension(3)::c081,c082,c083
      complex(16),target,dimension(2)::c161,c162,c163
!$omp threadprivate(p_c04,p_c08,p_c16)
    end module mod

    module mod1
      use mod
     contains
      subroutine sub_i()
        c041=(1.0e0,-1.0e0)
        c081=(1.0d0,-1.0d0)
        c161=(1.0q0,-1.0q0)
        c042=(1.0e1,-1.0e1)
        c082=(1.0d1,-1.0d1)
        c162=(1.0q1,-1.0q1)
        c043=(1.1e1,-1.1e1)
        c083=(1.1d1,-1.1d1)
        c163=(1.1q1,-1.1q1)
      end subroutine sub_i
      subroutine sub_s()
        p_c04=>c041
        p_c08=>c081
        p_c16=>c161
      end subroutine sub_s
      subroutine sub_e()
        if (.not.associated(p_c04)) print *,"fail"
        if (.not.associated(p_c08)) print *,"fail"
        if (.not.associated(p_c16)) print *,"fail"
        if (any(p_c04 /= (1.1e1,-1.1e1))) print *,"fail"
        if (any(p_c08 /= (1.2d1,-1.2d1))) print *,"fail"
        if (any(p_c16 /= (1.3q1,-1.3q1))) print *,"fail"
        if (any(c042 /= (1.1e1,-1.1e1))) print *,"fail"
        if (any(c082 /= (1.2d1,-1.2d1))) print *,"fail"
        if (any(c162 /= (1.3q1,-1.3q1))) print *,"fail"
        p_c04=>null()
        p_c08=>null()
        p_c16=>null()
      end subroutine sub_e
    end module mod1

    program ompv2
     use mod1
      call sub_i()
      call sub_s()
!$omp parallel
      p_c04=>c042
      p_c08=>c082
      p_c16=>c162
      call sub()
!$omp end parallel
      call sub_e()
      print *,'pass'
    end program

    subroutine sub()
     use mod
      integer(4),external::OMP_GET_THREAD_NUM
!$omp single
      p_c04=p_c04+(1.0e0,-1.0e0)
      p_c08=p_c08+(2.0d0,-2.0d0)
      p_c16=p_c16+(3.0q0,-3.0q0)
!$omp end single copyprivate(p_c04,p_c08,p_c16)
      if (.not.associated(p_c04)) print *,"fail"
      if (.not.associated(p_c08)) print *,"fail"
      if (.not.associated(p_c16)) print *,"fail"
      if (any(lbound(p_c04)/=(/4,3/))) print *,"fail"
      if (any(ubound(p_c04)/=(/5,5/))) print *,"fail"
      if (size(p_c04)/=6) print *,"fail"
      if (any(p_c04 /= (1.1e1,-1.1e1))) print *,"fail"
      if (any(p_c08 /= (1.2d1,-1.2d1))) print *,"fail"
      if (any(p_c16 /= (1.3q1,-1.3q1))) print *,"fail"
      if (any(c042 /= (1.1e1,-1.1e1))) print *,"fail"
      if (any(c082 /= (1.2d1,-1.2d1))) print *,"fail"
      if (any(c162 /= (1.3q1,-1.3q1))) print *,"fail"
      if (OMP_GET_THREAD_NUM()/=0) p_c04=>null()
      if (OMP_GET_THREAD_NUM()/=0) p_c08=>null()
      if (OMP_GET_THREAD_NUM()/=0) p_c16=>null()
    end subroutine sub
