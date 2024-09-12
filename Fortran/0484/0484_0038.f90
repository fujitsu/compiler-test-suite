INTEGER :: I
!$OMP PARALLEL
!$OMP simd
DO K = 1, 1
END DO
!$OMP END simd
!$OMP simd
DO I = 1, 1
END DO
!$OMP END simd
!$OMP END PARALLEL
print *,"pass"
END
