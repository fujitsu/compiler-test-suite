      !$OMP PARALLEL
      !$OMP sections
      !$omp simd
      DO i2 = 1, 1
      DO j2 = 1, 1
      END DO
      END DO
      !$OMP END simd
      !$OMP END sections
      !$OMP END PARALLEL
      print *,'pass'
      END
    
