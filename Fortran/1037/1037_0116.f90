real(16) tmor(3),tmp1,tmp
tmor(3)=2.q0;tmp=0.5q0;tmp1=0.8
j=3
!$omp atomic
tmor(j)=tmor(j)+tmp*0.5q0+tmp1
if (abs(tmor(3)-3.05d0)>0.00001_8)print *,'error'
print *,'pass'
end
