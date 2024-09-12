i=1
j=2
!$OMP PARALLEL
!$OMP sections
DO i = 1, 1
DO j = 1, 1
END DO
END DO
!$OMP END sections
!$OMP simd
DO i3 = 1, 1
DO j3 = 1, 1
END DO
END DO
!$OMP END simd
!$OMP PARALLEL
!$OMP END PARALLEL
!$OMP PARALLEL
!$OMP END PARALLEL
!$OMP sections
!$omp parallel
!$OMP simd
DO i1 = 1, 1
DO j1 = 1, 1
END DO
END DO
!$OMP END simd
!$omp endparallel
!$OMP section
!$omp simd
DO i2 = 1, 1
DO j2 = 1, 1
END DO
END DO
!$OMP END simd
!$OMP END sections
!$OMP END PARALLEL
print *,'pass'
END
