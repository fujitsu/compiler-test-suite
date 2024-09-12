    INTEGER :: I, J
    !$OMP parallel 
    !$omp do
    DO I = 1, 100
    !$OMP parallel do collapse(2)
    DO I1 = 1, 100
    DO J2 = 1, 100
    DO J3 = 1, 100
    END DO
    END DO
    END DO
    !$OMP END parallel do
    END DO
    !$OMP END do
    !$OMP END parallel 
print *,'pass'
end

