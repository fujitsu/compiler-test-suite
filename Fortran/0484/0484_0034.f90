!$OMP PARALLEL
!$OMP sections
DO ix = 1, 100
END DO
!$OMP simd
DO I = 1, 100
DO J = 1, 100
END DO
END DO
!$OMP END simd
!$OMP end sections
!$OMP simd
DO I1 = 1, 100
DO J2 = 1, 100
END DO
END DO
!$OMP END simd
!$OMP END PARALLEL
print *,'pass'
END

