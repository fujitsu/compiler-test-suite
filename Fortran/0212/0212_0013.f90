integer ::a(100,100)
a=1
!$omp workshare
!$omp critical
a=a
!$omp end critical
!$omp end workshare
print *,'pass'
end
