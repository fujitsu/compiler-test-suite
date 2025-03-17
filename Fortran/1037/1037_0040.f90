i=2;j=4
!$omp atomic
i=iand(i,j)
if (i/=0)print *,'error'
print *,'pass'
end
