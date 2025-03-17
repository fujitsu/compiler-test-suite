integer(8) i,j
i=-1;j=-1
!$omp atomic
i=ieor(i,j)
if (i/=0)print *,'error-01',i
print *,'pass'
end
