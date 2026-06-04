    module mod
      complex( 4),dimension(2,2,3,2,2)::c04
      complex( 8),dimension(2,3,1)::c08
      complex(16),dimension(2)::c16
      common /com/ c04,c08,c16
!$omp threadprivate(/com/)
    end module mod

      subroutine sub0()   
      complex( 4),dimension(2,2,3,2,2)::c04
      complex( 8),dimension(2,3,1)::c08
      complex(16),dimension(2)::c16
      common /com/ c04,c08,c16
!$omp threadprivate(/com/)
        c04=(1.0e0,-1.0e0)
        c08=(1.0d0,-1.0d0)
        c16=(1.0q0,-1.0q0)
      end subroutine sub0

    program ompv2
      complex( 4),dimension(2,2,3,2,2)::c04
      complex( 8),dimension(2,3,1)::c08
      complex(16),dimension(2)::c16
      common /com/ c04,c08,c16
!$omp threadprivate(/com/)
      call sub()
      if (any(c04 /= (1.1e1,-1.1e1))) print *,"fail"
      if (any(c08 /= (1.2d1,-1.2d1))) print *,"fail"
      if (any(c16 /= (1.3q1,-1.3q1))) print *,"fail"
      print *,'pass'
    end program ompv2

    subroutine sub()
      complex( 4),dimension(2,2,3,2,2)::c04
      complex( 8),dimension(2,3,1)::c08
      complex(16),dimension(2)::c16
      common /com/ c04,c08,c16
!$omp threadprivate(/com/)
      call sub0()
!$omp parallel copyin(c04,c08,c16)
      if (any(c04 /= (1.0e0,-1.0e0))) print *,"fail"
      if (any(c08 /= (1.0d0,-1.0d0))) print *,"fail"
      if (any(c16 /= (1.0q0,-1.0q0))) print *,"fail"
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
    end subroutine sub
