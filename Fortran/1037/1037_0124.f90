integer a(3),t1,t2
a(3)=2;t1=5;t2=8
j=3
!$omp atomic
a(j)=(a(j)+t1+t2)
if (a(3)/=15)print *,'error',a(3)
a(3)=2
!$omp atomic
a(j)=a(j)+(t1-t2)
if (a(3)/=-1)print *,'error',a(3)
a(3)=2
!$omp atomic
a(j)=a(j)+(-t2)
if (a(3)/=-6)print *,'error',a(3)
print *,'pass'
end
