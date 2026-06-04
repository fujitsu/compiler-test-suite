i=-1
!$omp atomic capture seq_cst
j=i    
i=i+10
!$omp end atomic
!$omp atomic capture,seq_cst
j=i
i=i+10
!$omp end atomic
!$omp atomic seq_cst capture
j=i
i=i+10
!$omp end atomic
!$omp atomic seq_cst,capture
j=i
i=i+10
!$omp end atomic
if(i/=39) print *,'err'
if(j/=29) print *,'err'
print *,'pass'
end
