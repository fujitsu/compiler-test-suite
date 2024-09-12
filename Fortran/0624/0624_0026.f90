subroutine s1
implicit real(8)(a)
real(8),parameter::a=0.12345678_8
real(8),parameter::a01=sqrt(a)
real(8),parameter::a02=dsqrt(a)
real(8),parameter::a03(2)=dsqrt([a,a])
real(8),parameter::a04(2)=sqrt([a,a])
real(8)::a13(2),a14(2)
a11=sqrt(a)
a12=dsqrt(a)
a13=dsqrt(a)
a14=sqrt(a)
if (abs(a11-a01)>0.0000001_8) print *,101
if (abs(a12-a02)>0.0000001_8) print *,102
if (any(abs(a13-a03)>0.0000001_8)) print *,103
if (any(abs(a14-a04)>0.0000001_8)) print *,104
end
call s1
print *,'pass'
end
