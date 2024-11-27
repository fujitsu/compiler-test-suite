             INTEGER :: I, J
             !$OMP PARALLEL sections default(none)
             !$OMP SIMD
             DO I = 1, 1
             J = 1
             END DO
             !$OMP END SIMD
            !$OMP END PARALLEL sections
        print *,'pass'
          END program
