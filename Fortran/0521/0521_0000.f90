    INTEGER :: I, J
    !$OMP task
    DO I = 1, 100
    !$OMP critical
    !$OMP simd
    DO I1 = 1, 100
    DO J2 = 1, 100
    END DO
    END DO
    !$OMP END simd
    !$OMP END critical
    END DO
    !$OMP END task
print *,'pass'
end

