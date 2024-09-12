    INTEGER :: I, J
    !$OMP parallel 
    DO I = 1, 100
    !$OMP simd collapse(2)
    DO I1 = 1, 100
    DO J2 = 1, 100
    DO J3 = 1, 100
    END DO
    END DO
    END DO
    !$OMP END simd
    END DO
    !$OMP END parallel 
print *,'pass'
end

