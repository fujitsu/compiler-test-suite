integer  r(2),v(2)
v(2)=2
i=2
r(i)=1
n=2;nn=3
!$omp atomic 
r(i)=r(i)+v(i)
if(r(2)/=3)print *,'error-1',r(2)
!$omp atomic 
r(i)=r(i)+n*nn
if(r(2)/=9)print *,'error-2',r(2)
print *,'pass'
end
