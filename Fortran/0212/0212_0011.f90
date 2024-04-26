integer ::a(100,100)
!$omp workshare
!$omp parallel
!$omp endparallel
!$omp end workshare

!$omp workshare
!$omp end workshare

!$omp workshare
!$omp parallel
!$omp endparallel
!$omp end workshare

!$omp workshare
!$omp parallel
!$omp endparallel
!$omp end workshare
print *,'pass'
end
