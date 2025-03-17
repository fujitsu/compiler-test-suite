a=1
k=2
!$omp atomic
      a = a + (k+1234)
if (abs(a-1237)>0.0001)print *,'error'
print *,'pass'
end
