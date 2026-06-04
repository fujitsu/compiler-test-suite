    block data
      real( 4)::r04=1.0e0
      real( 8)::r08=1.0d0
      real(16)::r16=1.0q0
      common /com04/ r04
      common /com08/ r08
      common /com16/ r16
!$omp threadprivate(/com04/,/com08/,/com16/)
    end block data

    program ompv2
      real( 4)::r04
      real( 8)::r08
      real(16)::r16
      common /com04/ r04
      common /com08/ r08
      common /com16/ r16
!$omp threadprivate(/com04/,/com08/,/com16/)
      call sub()
      if (r04 /= 1.0e2) print *,"fail"
      if (r08 /= 1.0e2) print *,"fail"
      if (r16 /= 1.0e2) print *,"fail"
      print *,'pass'
    end

    subroutine sub()
      real( 4)::r04
      real( 8)::r08
      real(16)::r16
      common /com04/ r04
      common /com08/ r08
      common /com16/ r16
!$omp threadprivate(/com04/,/com08/,/com16/)
!$omp parallel copyin(r04,r08,r16)
      if (r04 /= 1.0e0) print *,"fail"
      if (r08 /= 1.0e0) print *,"fail"
      if (r16 /= 1.0e0) print *,"fail"
      r04=1.0e1
      r08=1.0d1
      r16=1.0q1
!$omp single
      call sub_sub()
!$omp end single copyprivate(r04,r08,r16)
      if (r04 /= 1.0e2) print *,"fail"
      if (r08 /= 1.0e2) print *,"fail"
      if (r16 /= 1.0e2) print *,"fail"
!$omp end parallel
    end subroutine sub

    subroutine sub_sub()
     real( 4)::r04
     real( 8)::r08
     real(16)::r16
     common /com04/ r04
     common /com08/ r08
     common /com16/ r16
!$omp threadprivate(/com04/,/com08/,/com16/)
      r04=1.0e2
      r08=1.0d2
      r16=1.0q2
    end subroutine sub_sub
