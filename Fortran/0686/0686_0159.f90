    program abc
      call sub()
      print *,'pass'
    end program
    subroutine sub()
      complex( 4),dimension(1)::c04
      complex( 8),dimension(2)::c08
      complex(16),dimension(3)::c16
      c04=(1.0e0,-1.0e0)
      c08=(1.0d0,-1.0d0)
      c16=(1.0q0,-1.0q0)
!$omp parallel private(c04,c08,c16)
      c04=(1.0e1,-1.0e1)
      c08=(/(1.1d1,-1.1d1),(1.2d1,-1.2d1)/)
      c16=(/(1.3q1,-1.3q1),(1.4q1,-1.4q1),(1.5q1,-1.5q1)/)
!$omp single
      c04=c04+(1.0e1,-1.0e1)
      c08=c08+(2.0d1,-2.0d1)
      c16=c16+(3.0q1,-3.0q1)
!$omp end single copyprivate(c04,c08,c16)
      if (any( c04 /= (2.0e1,-2.0e1) )) print *,"fail"
      if (any( c08 /= (/(3.1d1,-3.1d1),(3.2d1,-3.2d1)/) )) print *,"fail"
      if (any( c16 /= (/(4.3q1,-4.3q1),(4.4q1,-4.4q1),(4.5q1,-4.5q1)/) )) &
                                        print *,"fail"
!$omp end parallel
      if (any( c04 /= (1.0e0,-1.0e0) )) print *,"fail"
      if (any( c08 /= (1.0d0,-1.0d0) )) print *,"fail"
      if (any( c16 /= (1.0q0,-1.0q0) )) print *,"fail"
    end subroutine sub
