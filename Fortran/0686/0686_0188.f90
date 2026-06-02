      call sub1()
      call sub3(3,2)
      print *,'pass'
    end program

    subroutine sub1()
      complex( 4),dimension(3)::c04=(1.0e0,-1.0e0)
      complex( 8),dimension(2)::c08=(1.0d0,-1.0d0)
      complex(16),dimension(2)::c16=(1.0q0,-1.0q0)
      call sub11(c04,c08,c16,3,2)
      call sub2 (c04,c08,c16,3,2)
      if (any( c04 /= (1.0e0,-1.0e0) )) print *,"fail"
      if (any( c08 /= (1.0d0,-1.0d0) )) print *,"fail"
      if (any( c16 /= (1.0q0,-1.0q0) )) print *,"fail"
    end subroutine sub1

    subroutine sub11(c04,c08,c16,len3,len2)
      complex( 4),dimension(len3)::c04
      complex( 8),dimension(len2)::c08
      complex(16),dimension(len2)::c16
!$omp parallel private(c04,c08,c16)
      c04=(/(1.1e1,-1.1e1),(1.2e1,-1.2e1),(1.3e1,-1.3e1)/)
      c08=(/(1.1d1,-1.1d1),(1.2d1,-1.2d1)/)
      c16=(/(1.1q1,-1.1q1),(1.2q1,-1.2q1)/)
!$omp single
      c04=c04+(1.0e0,-1.0e0)
      c08=c08+(2.0d0,-2.0d0)
      c16=c16+(3.0q0,-3.0q0)
!$omp end single copyprivate(c04,c08,c16)
      if (any( c04 /= (/(1.2e1,-1.2e1),(1.3e1,-1.3e1),(1.4e1,-1.4e1)/) )) &
          print *,"fail"
      if (any( c08 /= (/(1.3d1,-1.3d1),(1.4d1,-1.4d1)/) )) print *,"fail"
      if (any( c16 /= (/(1.4q1,-1.4q1),(1.5q1,-1.5q1)/) )) print *,"fail"
!$omp end parallel
    end subroutine sub11

    subroutine sub2(c04,c08,c16,len3,len2)
      complex( 4),dimension(len3)::c04
      complex( 8),dimension(len2)::c08
      complex(16),dimension(len2)::c16
!$omp parallel private(c04,c08,c16)
      call sub21(c04,c08,c16,len3,len2)
!$omp end parallel
      if (any( c04 /= (1.0e0,-1.0e0) )) print *,"fail"
      if (any( c08 /= (1.0d0,-1.0d0) )) print *,"fail"
      if (any( c16 /= (1.0q0,-1.0q0) )) print *,"fail"
    end subroutine sub2

    subroutine sub21(c04,c08,c16,len3,len2)
      complex( 4),dimension(len3)::c04
      complex( 8),dimension(len2)::c08
      complex(16),dimension(len2)::c16
      c04=(/(1.1e1,-1.1e1),(1.2e1,-1.2e1),(1.3e1,-1.3e1)/)
      c08=(/(1.1d1,-1.1d1),(1.2d1,-1.2d1)/)
      c16=(/(1.1q1,-1.1q1),(1.2q1,-1.2q1)/)
!$omp single
      c04=c04+(1.0e0,-1.0e0)
      c08=c08+(2.0d0,-2.0d0)
      c16=c16+(3.0q0,-3.0q0)
!$omp end single copyprivate(c04,c08,c16)
      if (any( c04 /= (/(1.2e1,-1.2e1),(1.3e1,-1.3e1),(1.4e1,-1.4e1)/) )) &
          print *,"fail"
      if (any( c08 /= (/(1.3d1,-1.3d1),(1.4d1,-1.4d1)/) )) print *,"fail"
      if (any( c16 /= (/(1.4q1,-1.4q1),(1.5q1,-1.5q1)/) )) print *,"fail"
    end subroutine sub21

    subroutine sub3(len3,len2) 
      complex( 4),dimension(len3)::c04
      complex( 8),dimension(len2)::c08
      complex(16),dimension(len2)::c16
      c04=(1.0e0,-1.0e0)
      c08=(1.0d0,-1.0d0)
      c16=(1.0q0,-1.0q0)
!$omp parallel private(c04,c08,c16)
      c04=(/(1.1e1,-1.1e1),(1.2e1,-1.2e1),(1.3e1,-1.3e1)/)
      c08=(/(1.1d1,-1.1d1),(1.2d1,-1.2d1)/)
      c16=(/(1.1q1,-1.1q1),(1.2q1,-1.2q1)/)
!$omp single
      c04=c04+(1.0e0,-1.0e0)
      c08=c08+(2.0d0,-2.0d0)
      c16=c16+(3.0q0,-3.0q0)
!$omp end single copyprivate(c04,c08,c16)
      if (any( c04 /= (/(1.2e1,-1.2e1),(1.3e1,-1.3e1),(1.4e1,-1.4e1)/) )) &
          print *,"fail"
      if (any( c08 /= (/(1.3d1,-1.3d1),(1.4d1,-1.4d1)/) )) print *,"fail"
      if (any( c16 /= (/(1.4q1,-1.4q1),(1.5q1,-1.5q1)/) )) print *,"fail"
!$omp end parallel
      if (any( c04 /= (1.0e0,-1.0e0) )) print *,"fail"
      if (any( c08 /= (1.0d0,-1.0d0) )) print *,"fail"
      if (any( c16 /= (1.0q0,-1.0q0) )) print *,"fail"
    end subroutine sub3
