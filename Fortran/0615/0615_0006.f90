    module mod
      complex(16),target::c161,c162,c163
    contains
      subroutine sub(p_c16)
      complex(16),pointer::p_c16
!$omp parallel private(p_c16)
!$omp single
      allocate(p_c16)
      p_c16 = (0,0)
      p_c16=p_c16+(3.0q0,-3.0q0)
!$omp end single copyprivate(p_c16)
!$omp end parallel
      end subroutine sub
    end module mod

  program abc
  use mod
  complex(16),pointer::p_c16
    call sub(p_c16)
    print *, "pass"
  end

