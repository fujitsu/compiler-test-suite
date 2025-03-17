subroutine s1
type x
real(4) tmor(3),tmp1,tmp
end type
type(x)::v
v%tmor(3)=2.d0;v%tmp=0.5d0;v%tmp1=0.8_8
j=3
!$omp atomic
v%tmor(j)=v%tmor(j)+v%tmp*5.+0.5*v%tmp1
if (abs(v%tmor(3)-4.9d0)>0.00001_8)print *,'error-1',v%tmor(3)
end 
subroutine s2
type x
integer(4) tmor(3),tmp1,tmp
end type
type(x)::v
v%tmor(3)=2;v%tmp=5;v%tmp1=8
j=3
!$omp atomic
v%tmor(j)=v%tmor(j)+v%tmp*5+4*v%tmp1
if (abs(v%tmor(3)-59)>0.00001_8)print *,'error-2',v%tmor(3)
end 
subroutine s3
type x
integer(8) tmor(3),tmp1,tmp
end type
type(x)::v
v%tmor(3)=2;v%tmp=5;v%tmp1=8
j=3
!$omp atomic
v%tmor(j)=v%tmor(j)+v%tmp*5_8+4_8*v%tmp1
if (abs(v%tmor(3)-59)>0.00001_8)print *,'error-2',v%tmor(3)
end
call s1
call s2
call s3
print *,'pass'
end
