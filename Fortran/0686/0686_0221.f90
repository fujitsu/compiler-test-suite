    module mod
      complex( 4)::c04
      complex( 8)::c08
      complex(16)::c16
     contains
      subroutine sub0()   
        c04=(1.0e0,-1.0e0)
        c08=(1.0d0,-1.0d0)
        c16=(1.0q0,-1.0q0)
      end subroutine sub0
    end module mod

    program abc
      use mod
      call sub()
      if (c04 /= (1.0e0,-1.0e0)) print *,"fail"
      if (c08 /= (1.0d0,-1.0d0)) print *,"fail"
      if (c16 /= (1.0q0,-1.0q0)) print *,"fail"
      print *,'pass'
    end program abc

    subroutine sub()
     use mod
      call sub0()
!$omp parallel private(c04,c08,c16)
      c04=(1.0e1,-1.0e1)
      c08=(1.0d1,-1.0d1)
      c16=(1.0q1,-1.0q1)
!$omp single
      c04=c04+(1.0e0,-1.0e0)
      c08=c08+(2.0d0,-2.0d0)
      c16=c16+(3.0q0,-3.0q0)
!$omp end single copyprivate(c04,c08,c16)
      if (c04 /= (1.1e1,-1.1e1)) print *,"fail"
      if (c08 /= (1.2d1,-1.2d1)) print *,"fail"
      if (c16 /= (1.3q1,-1.3q1)) print *,"fail"
!$omp end parallel
    end subroutine sub
