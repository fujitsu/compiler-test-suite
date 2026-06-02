!$omp atomic write seq_cst
i=-1
!$omp atomic write,seq_cst
i=-1
!$omp atomic seq_cst write
i=-1
!$omp atomic seq_cst,write
i=-1
!$omp end atomic
if(i/=-1) print *,'err'
print *,'pass'
end
