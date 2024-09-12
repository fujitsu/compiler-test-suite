      !$OMP PARALLEL
      !$OMP critical (ii1)
      !$OMP parallel
      !$omp parallel
      !$omp simd
      DO i2 = 1, 1
      DO j2 = 1, 1
      END DO
      END DO
      !$OMP END simd
      !$OMP END parallel
      !$OMP END parallel
      !$OMP END critical(ii1)
      !$OMP END PARALLEL
      print *,'pass'
      END
    
