    program ompv2
      USE omp_lib

!$ call OMP_SET_DYNAMIC(.false.)

#if _OPENMP == 200111
!$omp parallel num_threads(2)
#else
      call OMP_SET_NUM_THREADS(2)
!$omp parallel num_threads(2)
#endif

#if _OPENMP == 200111
      if (openmp_version /= _OPENMP) print *,"fail"
#endif
      if (OMP_GET_NUM_THREADS()/=2) print *,"fail"
      if (OMP_GET_THREAD_NUM()/=0.and.OMP_GET_THREAD_NUM()/=1) print *,"fail"

!$omp end parallel
     print *,'pass'
    end program
