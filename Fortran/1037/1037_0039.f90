i=2;j=3
!$omp atomic
  i=i+(j+8)
if (i/=13)print *,'error'
print *,'pass'
end
