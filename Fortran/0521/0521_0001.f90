    INTEGER :: I, J
    !$OMP parallel do
    DO I = 1, 100
    !$OMP simd
    DO I1 = 1, 100
    DO J2 = 1, 100
    END DO
    END DO
    !$OMP END simd
    END DO
    !$OMP END parallel do
print *,'pass'
end

