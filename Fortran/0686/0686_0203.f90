    program ompv2
      real( 4),dimension(3,1,1,1,1,1)::r04=1.0e0
      real( 8),dimension(3,2,1)::r08=1.0d0
      real(16),dimension(2,1,1,1,1,1,2)::r16=1.0q0
      call sub1(r04,r08,r16,3,2,1)
!$omp parallel private(r04,r08,r16)
      call sub2(r04,r08,r16,3,2,1)
!$omp end parallel
      if (any( r04 /= 1.0e0 )) print *,"fail"
      if (any( r08 /= 1.0e0 )) print *,"fail"
      if (any( r16 /= 1.0e0 )) print *,"fail"
      call sub3(3,2,1)
      print *,'pass'
    end program

    subroutine sub1(r04,r08,r16,len3,len2,len1)
      real( 4),dimension(len3,len1,len1,len1,len1,len1)::r04
      real( 8),dimension(len3,len2,len1)::r08
      real(16),dimension(len2,len1,len1,len1,len1,len1,len2)::r16
!$omp parallel private(r04,r08,r16)
      r04=reshape((/1.1e1,1.2e1,1.3e1/),(/3,1,1,1,1,1/))
      r08=reshape((/1.1d1,1.2d1,1.3d1,1.4d1,1.5d1,1.6d1/),(/3,2,1/))
      r16=reshape((/1.1q1,1.2q1,1.3q1,1.4q1/),(/2,1,1,1,1,1,2/))
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

    subroutine sub2(r04,r08,r16,len3,len2,len1)
      real( 4),dimension(len3,len1,len1,len1,len1,len1)::r04
      real( 8),dimension(len3,len2,len1)::r08
      real(16),dimension(len2,len1,len1,len1,len1,len1,len2)::r16
      r04=reshape((/1.1e1,1.2e1,1.3e1/),(/3,1,1,1,1,1/))
      r08=reshape((/1.1d1,1.2d1,1.3d1,1.4d1,1.5d1,1.6d1/),(/3,2,1/))
      r16=reshape((/1.1q1,1.2q1,1.3q1,1.4q1/),(/2,1,1,1,1,1,2/))
!$omp single
      r04=1.0e2
      r08=1.0d3
      r16=1.0q4
!$omp end single copyprivate(r04,r08,r16)
      if (any( r04 /= 1.0e2 )) print *,"fail"
      if (any( r08 /= 1.0e3 )) print *,"fail"
      if (any( r16 /= 1.0e4 )) print *,"fail"
    end subroutine sub2

    subroutine sub3(len3,len2,len1)
      real( 4),dimension(len3,len1,len1,len1,len1,len1)::r04
      real( 8),dimension(len3,len2,len1)::r08
      real(16),dimension(len2,len1,len1,len1,len1,len1,len2)::r16
      r04=1.0e0
      r08=1.0d0
      r16=1.0q0
!$omp parallel private(r04,r08,r16)
!$omp workshare
      r04=reshape((/1.1e1,1.2e1,1.3e1/),(/len3,len1,len1,len1,len1,len1/))
      r08=reshape((/1.1d1,1.2d1,1.3d1,1.4d1,1.5d1,1.6d1/),(/len3,len2,len1/))
      r16=reshape((/1.1q1,1.2q1,1.3q1,1.4q1/),(/len2,len1,1,1,len1,len1,len2/))
!$omp end workshare
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
