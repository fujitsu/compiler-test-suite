      i=100
      call sub(i)
      print *,'pass'
      end

      subroutine sub(i)

      call OMP_SET_DYNAMIC(.false.)
      call OMP_SET_MAX_ACTIVE_LEVELS(.true.)

!$omp parallel firstprivate(i)
      if (i/=100) print *,"fail"
!$omp single
      i=i+100
!$omp parallel firstprivate(i)
      if (i/=200) print *,"fail"
!$omp single
      i=i+100
      if (i/=300) print *,"fail"
!$omp endsingle copyprivate(i)
      if (i/=300) print *,"fail"
!$omp end parallel
      if (i/=200) print *,"fail"
!$omp endsingle copyprivate(i)
      if (i/=200) print *,"fail"
!$omp end parallel
      if (i/=100) print *,"fail"
      end
