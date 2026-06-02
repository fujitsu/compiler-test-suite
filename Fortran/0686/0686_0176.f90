      real( 4)::r04=1.0e0
      real( 8)::r08=1.0d0
      real(16)::r16=1.0q0
!$omp parallel private(r04,r08,r16)
      call sub(r04,r08,r16)
!$omp end parallel
      if (r04 /= 1.0e0) print *,"fail"
      if (r08 /= 1.0e0) print *,"fail"
      if (r16 /= 1.0e0) print *,"fail"
      print *,'pass'
      end

      subroutine sub(r04,r08,r16)
      real( 4)::r04
      real( 8)::r08
      real(16)::r16
      r04=1.0e1
      r08=1.0d1
      r16=1.0q1
!$omp single
      r04=1.0e2
      r08=1.0d2
      r16=1.0q2
!$omp end single copyprivate(r04,r08,r16)
      if (r04 /= 1.0e2) print *,"fail"
      if (r08 /= 1.0e2) print *,"fail"
      if (r16 /= 1.0e2) print *,"fail"
      end subroutine sub
