real*8 x,k(2)
i=2;k(2)=5;x=6
!$omp atomic
i=i+4_8
!$omp atomic
x=x+4_8
!$omp atomic
k(2)=k(2)+4_8

if (i/=6)print *,'error-2'
if (abs(x-10)>0.001)print *,'error-3'
if (abs(k(2)-9)>0.001)print *,'error-4'
print *,'pass'
end
