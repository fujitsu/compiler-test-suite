            IMPLICIT NONE
            INTEGER :: I, J
            !$OMP PARALLEL
            !$OMP SECTIONS
            !$OMP SIMD
            DO I = 1, 100
            END DO
            !$OMP END SIMD
            !$OMP END SECTIONS
            !$OMP END PARALLEL

            !$OMP PARALLEL
            !$OMP SECTIONS
            !$OMP SIMD
            DO I = 1, 100
            DO J = 1, 100
            END DO
            END DO
            !$OMP END SIMD
            !$OMP END SECTIONS
            !$OMP END PARALLEL
        print *,"pass"
        END

