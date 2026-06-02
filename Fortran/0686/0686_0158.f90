      call sub()
      print *,'pass'
      end

      subroutine sub()
      real( 4),dimension(2)::r04
      real( 8),dimension(2)::r08
      real(16),dimension(2)::r16
      r04=1.0e0 ; r08=1.0d0 ; r16=1.0q0
!$omp parallel private(r04,r08,r16)
      r04=1.0e1 ; r08=1.0d1 ; r16=1.0q1
!$omp single
      r04=(/1.1e2,1.2e2/)
      r08=(/1.3d2,1.4d2/)
      r16=(/1.5q2,1.6q2/)
!$omp end single copyprivate(r04,r08,r16)
      if (any(r04 /= (/1.1e2,1.2e2/))) print *,"fail"
      if (any(r08 /= (/1.3d2,1.4d2/))) print *,"fail"
      if (any(r16 /= (/1.5q2,1.6q2/))) print *,"fail"
!$omp end parallel
      if (any(r04 /= 1.0e0)) print *,"fail"
      if (any(r08 /= 1.0e0)) print *,"fail"
      if (any(r16 /= 1.0e0)) print *,"fail"
      end subroutine sub
