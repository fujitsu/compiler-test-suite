      call sub()
      print *,'pass'
      contains
        subroutine sub()
        complex( 4),save::c04(2)
        complex( 8),save::c08(1)
        complex(16),save::c16(1)
  !$omp threadprivate(c04,c08,c16)
        c04=(1.0e0,-1.0e0)
        c08=(1.0d0,-1.0d0)
        c16=(1.0q0,-1.0q0)
  !$omp parallel
        c04=(1.0e1,-1.0e1)
        c08=(1.0d1,-1.0d1)
        c16=(1.0q1,-1.0q1)
  !$omp single
        c04=c04+(1.0e0,-1.0e0)
        c08=c08+(2.0d0,-2.0d0)
        c16=c16+(3.0q0,-3.0q0)
  !$omp end single copyprivate(c04,c08,c16)
        if (any(c04 /= (1.1e1,-1.1e1))) print *,"fail"
        if (any(c08 /= (1.2d1,-1.2d1))) print *,"fail"
        if (any(c16 /= (1.3q1,-1.3q1))) print *,"fail"
  !$omp end parallel
        if (any(c04 /= (1.1e1,-1.1e1))) print *,"fail"
        if (any(c08 /= (1.2d1,-1.2d1))) print *,"fail"
        if (any(c16 /= (1.3q1,-1.3q1))) print *,"fail"
        end subroutine sub
      end
