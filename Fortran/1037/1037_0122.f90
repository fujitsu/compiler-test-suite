subroutine s1
real(4) tmor(3),tmp1,tmp
tmor(3)=2.d0;tmp=0.5d0;tmp1=0.8_8
j=3
!$omp atomic
tmor(j)=tmor(j)+tmp*5.+0.5*tmp1
if (abs(tmor(3)-4.9d0)>0.00001_8)print *,'error-1',tmor(3)
end 
subroutine s2
integer(4) tmor(3),tmp1,tmp
tmor(3)=2;tmp=5;tmp1=8
j=3
!$omp atomic
tmor(j)=tmor(j)+tmp*5+4*tmp1
if (abs(tmor(3)-59)>0.00001_8)print *,'error-2',tmor(3)
end 
subroutine s3
integer(8) tmor(3),tmp1,tmp
tmor(3)=2;tmp=5;tmp1=8
j=3
!$omp atomic
tmor(j)=tmor(j)+tmp*5_8+4_8*tmp1
if (abs(tmor(3)-59)>0.00001_8)print *,'error-2',tmor(3)
end
call s1
call s2
call s3
print *,'pass'
end
