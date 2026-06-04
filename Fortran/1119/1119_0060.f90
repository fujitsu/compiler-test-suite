j=-2
!$omp atomic read seq_cst
i=j
!$omp end atomic
!$omp atomic seq_cst read
i=j
!$omp end atomic
!$omp atomic seq_cst,read
i=j
!$omp end atomic
!$omp atomic read,seq_cst
i=j
!$omp end atomic

if(i/=j) print *,'err'
print *,'pass'
end
