    module mod
      real( 4),dimension(2)::r04=1.0e0
      real( 8),dimension(2,2)::r08=1.0d0
      real(16),dimension(1)::r16=1.0q0
!$omp threadprivate(r04,r08,r16)
    end module mod

    program ompv2
      use mod
      call sub()
      if (any(r04 /= 1.0e2)) print *,"fail"
      if (any(r08 /= 1.0e2)) print *,"fail"
      if (any(r16 /= 1.0e2)) print *,"fail"
      print *,'pass'
    end program

    subroutine sub()
     use mod
!$omp parallel copyin(r04,r08,r16)
      if (any(r04 /= 1.0e0)) print *,"fail"
      if (any(r08 /= 1.0e0)) print *,"fail"
      if (any(r16 /= 1.0e0)) print *,"fail"
      r04=1.0e1
      r08=1.0d1
      r16=1.0q1
!$omp single
      call sub_sub(r04,r08,r16,2)
!$omp end single copyprivate(r04,r08,r16)
      if (any(r04 /= 1.0e2)) print *,"fail"
      if (any(r08 /= 1.0e2)) print *,"fail"
      if (any(r16 /= 1.0e2)) print *,"fail"
!$omp end parallel
    end subroutine sub

    subroutine sub_sub(r04,r08,r16,n)
     real( 4),dimension(n)::r04
     real( 8),dimension(2,n)::r08
     real(16),dimension(1)::r16
      r04=1.0e2
      r08=1.0d2
      r16=1.0q2
    end subroutine sub_sub
