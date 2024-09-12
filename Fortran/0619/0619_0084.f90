subroutine s1(d)
parameter(k=4)
real(k)::a,b,c,d
parameter(a=-0.0,b=1.0)
parameter (c=sign(b,a))
if (c/=sign(b,d))print *,101,c,sign(b,d)
end
subroutine s2(d)
parameter(k=8)
real(k)::a,b,c,d
parameter(a=-0.0,b=1.0)
parameter (c=sign(b,a))
if (c/=sign(b,d))print *,103,c,sign(b,d)
end
subroutine s3(d)
parameter(k=16)
real(k)::a,b,c,d
parameter(a=-0.0,b=1.0)
parameter (c=sign(b,a))
if (c/=sign(b,d))print *,103,c,sign(b,d)
end
call s1(-0.0_4)
call s2(-0.0_8)
call s3(-0.0_16)
print *,'pass'
end
