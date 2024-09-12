    INTEGER :: i1, J2
i1=1
J2=1
    !$OMP parallel   default(private)
    !$OMP dosimd
    DO I1 = 1, 100
    DO J2 = 1, 100
    END DO
    END DO
    !$OMP END dosimd
    !$OMP END parallel
if ( J2 /= 1 ) print *,"J2+",J2
print *,"pass"
end
