integer::z4=0,z8=0,z16=0
integer,parameter::k=4,n=8,m=16
call s1 ( 1_8 * 1.0_k , 1.0)
call s2 ( 1_8 * 1.0_n , 1.0)
call s3 ( 1_8 * 1.0_m, 1.0)
call s1 ( 1_8 ** 1.0_k , 1.0)
call s2 ( 1_8 ** 1.0_n , 1.0)
call s3 ( 1_8 ** 1.0_m, 1.0)
if (z4/=2) print *,101
if (z8/=2) print *,102
if (z16/=2) print *,103
print *,'pass'
contains
subroutine s1 (  r ,nn)
real   ,intent(in)::nn
real(4):: r
if (  r/=nn) print *,101
z4=z4+1
end subroutine
subroutine s2 (  r ,nn)
real  ,intent(in)::nn
real(8):: r
z8=z8+1
if (  r/=nn) print *,111
end subroutine
subroutine s3 (  r ,nn)
real,intent(in)::nn
real(16):: r
z16=z16+1
if (  r/=nn) print *,121
end subroutine
end
