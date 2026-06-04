    module mod
      real( 4)::r04=1.0e0
      real( 8)::r08=1.0d0
      real(16)::r16=1.0q0
    end module mod

      use mod
      call sub()
      if (r04 /= 1.0e0) print *,"fail"
      if (r08 /= 1.0e0) print *,"fail"
      if (r16 /= 1.0e0) print *,"fail"
      print *,'pass'
    end

    subroutine sub()
     use mod
!$omp parallel private(r04,r08,r16)
      r04=1.0e1
      r08=1.0d1
      r16=1.0q1
!$omp single
      call sub_sub(r04,r08,r16)
!$omp end single copyprivate(r04,r08,r16)
      if (r04 /= 1.0e2) print *,"fail"
      if (r08 /= 1.0e2) print *,"fail"
      if (r16 /= 1.0e2) print *,"fail"
!$omp end parallel
    end subroutine sub

    subroutine sub_sub(r04,r08,r16)
     real( 4)::r04
     real( 8)::r08
     real(16)::r16
      r04=1.0e2
      r08=1.0d2
      r16=1.0q2
    end subroutine sub_sub
