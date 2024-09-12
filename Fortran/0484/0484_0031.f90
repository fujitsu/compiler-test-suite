            IMPLICIT NONE
            INTEGER :: I, I1, I2
            !$OMP PARALLEL
            !$OMP SECTIONS
            !$OMP SIMD
            DO I = 1, 100
            END DO
            !$OMP END SIMD
            !$OMP END SECTIONS
            !$OMP SIMD
            DO I1 = 1, 100
            DO I2 = 1, 100
            END DO
            END DO
            !$OMP END SIMD
            !$OMP END PARALLEL
        print *,"pass"
        END

