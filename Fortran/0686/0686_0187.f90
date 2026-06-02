      real( 4),dimension(3)::r04=1.0e0
      real( 8),dimension(3)::r08=1.0d0
      real(16),dimension(2)::r16=1.0q0
      call sub1(r04,r08,r16,3,2)
!$omp parallel private(r04,r08,r16)
      call sub2(r04,r08,r16,3,2)
!$omp end parallel
      if (any( r04 /= 1.0e0 )) print *,"fail"
      if (any( r08 /= 1.0e0 )) print *,"fail"
      if (any( r16 /= 1.0e0 )) print *,"fail"
      call sub3(3,2)
      print *,'pass'
    end program

    subroutine sub1(r04,r08,r16,len3,len2)
      real( 4),dimension(len3)::r04
      real( 8),dimension(len3)::r08
      real(16),dimension(len2)::r16
!$omp parallel private(r04,r08,r16)
      r04=(/1.1e1,1.2e1,1.3e1/)
      r08=(/1.1d1,1.2d1,1.3d1/)
      r16=(/1.1q1,1.2q1/)
!$omp single
      r04=1.0e2
      r08=1.0d3
      r16=1.0q4
!$omp end single copyprivate(r04,r08,r16)
      if (any( r04 /= 1.0e2 )) print *,"fail"
      if (any( r08 /= 1.0e3 )) print *,"fail"
      if (any( r16 /= 1.0e4 )) print *,"fail"
!$omp end parallel
    end subroutine sub1

    subroutine sub2(r04,r08,r16,len3,len2)
      real( 4),dimension(len3)::r04
      real( 8),dimension(len3)::r08
      real(16),dimension(len2)::r16
      r04=(/1.1e1,1.2e1,1.3e1/)
      r08=(/1.1d1,1.2d1,1.3d1/)
      r16=(/1.1q1,1.2q1/)
!$omp single
      r04=1.0e2
      r08=1.0d3
      r16=1.0q4
!$omp end single copyprivate(r04,r08,r16)
      if (any( r04 /= 1.0e2 )) print *,"fail"
      if (any( r08 /= 1.0e3 )) print *,"fail"
      if (any( r16 /= 1.0e4 )) print *,"fail"
    end subroutine sub2

    subroutine sub3(len3,len2)
      real( 4),dimension(len3)::r04
      real( 8),dimension(len3)::r08
      real(16),dimension(len2)::r16
      r04=1.0e0
      r08=1.0d0
      r16=1.0q0
!$omp parallel private(r04,r08,r16)
      r04=(/1.1e1,1.2e1,1.3e1/)
      r08=(/1.1d1,1.2d1,1.3d1/)
      r16=(/1.1q1,1.2q1/)
!$omp single
      r04=1.0e2
      r08=1.0d3
      r16=1.0q4
!$omp end single copyprivate(r04,r08,r16)
      if (any( r04 /= 1.0e2 )) print *,"fail"
      if (any( r08 /= 1.0e3 )) print *,"fail"
      if (any( r16 /= 1.0e4 )) print *,"fail"
!$omp end parallel
      if (any( r04 /= 1.0e0 )) print *,"fail"
      if (any( r08 /= 1.0e0 )) print *,"fail"
      if (any( r16 /= 1.0e0 )) print *,"fail"
    end subroutine sub3
