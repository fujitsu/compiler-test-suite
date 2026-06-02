      call sub()
      print *,'pass'
      contains
        subroutine sub()
        complex( 4),pointer,save::p_c04(:)
        complex( 8),pointer,save::p_c08(:)
        complex(16),pointer,save::p_c16(:)
        complex( 4),target,dimension(2)::c041,c042,c043
        complex( 8),target,dimension(1)::c081,c082,c083
        complex(16),target,dimension(1)::c161,c162,c163
        integer(4),external::OMP_GET_THREAD_NUM
  !$omp threadprivate(p_c04,p_c08,p_c16)
        c041=(1.0e0,-1.0e0)
        c081=(1.0d0,-1.0d0)
        c161=(1.0q0,-1.0q0)
        c042=(1.0e1,-1.0e1)
        c082=(1.0d1,-1.0d1)
        c162=(1.0q1,-1.0q1)
        c043=(1.1e1,-1.1e1)
        c083=(1.1d1,-1.1d1)
        c163=(1.1q1,-1.1q1)
        p_c04=>c041
        p_c08=>c081
        p_c16=>c161
  !$omp parallel copyin(p_c04,p_c08,p_c16)
        if (any(p_c04 /= (1.0e0,-1.0e0))) print *,"fail"
        if (any(p_c08 /= (1.0d0,-1.0d0))) print *,"fail"
        if (any(p_c16 /= (1.0q0,-1.0q0))) print *,"fail"
        p_c04=>c042
        p_c08=>c082
        p_c16=>c162
  !$omp single
        p_c04=p_c04+(1.0e0,-1.0e0)
        p_c08=p_c08+(2.0d0,-2.0d0)
        p_c16=p_c16+(3.0q0,-3.0q0)
  !$omp end single copyprivate(p_c04,p_c08,p_c16)
        if (.not.associated(p_c04)) print *,"fail"
        if (.not.associated(p_c08)) print *,"fail"
        if (.not.associated(p_c16)) print *,"fail"
        if (any(p_c04 /= (1.1e1,-1.1e1))) print *,"fail"
        if (any(p_c08 /= (1.2d1,-1.2d1))) print *,"fail"
        if (any(p_c16 /= (1.3q1,-1.3q1))) print *,"fail"
        if (any(c042 /= (1.1e1,-1.1e1))) print *,"fail"
        if (any(c082 /= (1.2d1,-1.2d1))) print *,"fail"
        if (any(c162 /= (1.3q1,-1.3q1))) print *,"fail"
        if (OMP_GET_THREAD_NUM()/=0) p_c04=>null()
        if (OMP_GET_THREAD_NUM()/=0) p_c08=>null()
        if (OMP_GET_THREAD_NUM()/=0) p_c16=>null()
  !$omp end parallel
        if (.not.associated(p_c04)) print *,"fail"
        if (.not.associated(p_c08)) print *,"fail"
        if (.not.associated(p_c16)) print *,"fail"
        if (any(p_c04 /= (1.1e1,-1.1e1))) print *,"fail"
        if (any(p_c08 /= (1.2d1,-1.2d1))) print *,"fail"
        if (any(p_c16 /= (1.3q1,-1.3q1))) print *,"fail"
        p_c04=>null()
        p_c08=>null()
        p_c16=>null()
        end subroutine sub
      end
