subroutine s1
real(16) tmor(3),tmp1,tmp
tmor(3)=2.d0;tmp=0.5d0;tmp1=0.8_8
j=3
!$omp atomic
tmor(j)=tmor(j)+tmp*5._16+0.5_16*tmp1
if (abs(tmor(3)-4.9d0)>0.00001_8)print *,'error-1',tmor(3)
end 
subroutine s2
integer(2) tmor(3),tmp1,tmp
tmor(3)=2;tmp=5;tmp1=8
j=3
!$omp atomic
tmor(j)=tmor(j)+tmp*5_2+4_2*tmp1
if (abs(tmor(3)-59)>0.00001_8)print *,'error-2',tmor(3)
end 
subroutine s3
integer(1) tmor(3),tmp1,tmp
tmor(3)=2;tmp=5;tmp1=8
j=3
!$omp atomic
tmor(j)=tmor(j)+tmp*5_1+4_1*tmp1
if (abs(tmor(3)-59)>0.00001_8)print *,'error-3',tmor(3)
end
call s1
call s2
call s3
print *,'pass'
end
