i=-1
!$omp atomic update seq_cst
i=i+10
!$omp atomic update,seq_cst
i=i+10
!$omp atomic seq_cst update
i=i+10
!$omp atomic seq_cst,update
i=i+10
!$omp end atomic
if(i/=39) print *,'err',i
print *,'pass'
end
