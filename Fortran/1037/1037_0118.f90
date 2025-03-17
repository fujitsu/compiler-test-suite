real(8) tmor(3),tmp1,tmp
tmor(3)=2.d0;tmp=0.5d0;tmp1=0.8_8
j=3
!$omp atomic
tmor(j)=tmor(j)+tmp*5.d0+0.5d0*tmp1
if (abs(tmor(3)-4.9d0)>0.00001_8)print *,'error'
print *,'pass'
end
