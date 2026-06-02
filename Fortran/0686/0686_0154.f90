      call sub()
      print *,'pass'
      contains
        subroutine sub()
        complex( 4),pointer::p_c04
        complex( 8),pointer::p_c08
        complex(16),pointer::p_c16
        complex( 4),target::c041,c042,c043
        complex( 8),target::c081,c082,c083
        complex(16),target::c161,c162,c163
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
  !$omp parallel private(p_c04,p_c08,p_c16)
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
        if (p_c04 /= (1.1e1,-1.1e1)) print *,"fail"
        if (p_c08 /= (1.2d1,-1.2d1)) print *,"fail"
        if (p_c16 /= (1.3q1,-1.3q1)) print *,"fail"
        if (c042 /= (1.1e1,-1.1e1)) print *,"fail"
        if (c082 /= (1.2d1,-1.2d1)) print *,"fail"
        if (c162 /= (1.3q1,-1.3q1)) print *,"fail"
        p_c04=>null()
        p_c08=>null()
        p_c16=>null()
  !$omp end parallel
        if (.not.associated(p_c04)) print *,"fail"
        if (.not.associated(p_c08)) print *,"fail"
        if (.not.associated(p_c16)) print *,"fail"
        if (p_c04 /= (1.0e0,-1.0e0)) print *,"fail"
        if (p_c08 /= (1.0d0,-1.0d0)) print *,"fail"
        if (p_c16 /= (1.0q0,-1.0q0)) print *,"fail"
        p_c04=>null()
        p_c08=>null()
        p_c16=>null()
        end subroutine sub
      end
