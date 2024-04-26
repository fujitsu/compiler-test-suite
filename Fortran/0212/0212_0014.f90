integer ::a(100,100)
i=1
a=1
!$omp workshare
a=a
!$omp atomic
i=i+1
!$omp end atomic
!$omp end workshare
print *,'pass'
!$omp atomic
i=i+1
!$omp end atomic
end
