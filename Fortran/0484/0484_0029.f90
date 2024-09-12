!$OMP PARALLEL
!$OMP parallel
DO I1 = 1, 100
END DO
!$OMP END parallel
!$OMP END PARALLEL
print *,'pass'
END
