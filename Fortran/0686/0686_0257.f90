      real( 4),save::r04(3)
      real( 8)     ::r08(2)
      real(16),save::r16(1)
!$omp threadprivate(r04,r16)
      r04=1.0e0
      r08=1.0d0
      r16=1.0q0
!$omp parallel private(r08) copyin(r04,r16)
      r04=r04*1.0e1
      r08=1.0d1
      r16=r16*1.0q1
!$omp single
      r04=r04*1.0e1
      r08=r08*1.0d1
      r16=r16*1.0q1
!$omp end single copyprivate(r04,r08,r16)
      if (any(r04 /= 1.0e2)) print *,"fail"
      if (any(r08 /= 1.0e2)) print *,"fail"
      if (any(r16 /= 1.0e2)) print *,"fail"
!$omp end parallel
      if (any(r04 /= 1.0e2)) print *,"fail"
      if (any(r08 /= 1.0e0)) print *,"fail"
      if (any(r16 /= 1.0e2)) print *,"fail"
      print *,'pass'
      end
