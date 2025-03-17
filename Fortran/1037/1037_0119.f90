real(8) tmor(3),tmp,tmp1
tmor(3)=2.d0;tmp=0.5d0;tmp1=3.d0
j=3
!$omp atomic
tmor(j)=tmor(j)+tmp1+tmp*5.d0
if (abs(tmor(3)-7.5d0)>0.00001_8)print *,'error'
print *,'pass'
end
