module m1
complex,protected :: c1,c2(2)
contains
subroutine s1
c1%im=1.
c1%re=c1%im+2.
do concurrent(n=1:2)
c2(n)%im=cos(real(n))
c2(n)%re=cos(real(n+1))
end do
end subroutine
subroutine s3(r,rr)
real::r(2)
if (rr/=1) print *,301
do n=1,2
if (abs(r(n)-cos(real(n)))>0.00001) print *,301
end do
r=r-2
end subroutine
subroutine s4(r,rr)
real::r(2)
if (rr/=3) print *,311
do n=1,2
if (abs(r(n)-cos(real(n+1)))>0.00001) print *,302
end do
r=r-1
end subroutine
end
subroutine s2
use m1
if (c1%im/=1) print *,101
if (c1%re/=3) print *,102
do n=1,2
if (abs(c2(n)%im-cos(real(n)))>0.00001) print *,201
if (abs(c2(n)%re-cos(real(n+1)))>0.00001) print *,202
end do
end

subroutine s5
use m1
call s1
call s2
call s3(r=c2%im,rr=c1%im)
call s4(r=c2%re,rr=c1%re)
if (c1%im/=1) print *,401
if (c1%re/=3) print *,402
do n=1,2
if (abs(c2(n)%im+2-cos(real(n)))>0.00001) print *,411
if (abs(c2(n)%re+1-cos(real(n+1)))>0.00001) print *,412
end do
end
call s5
print *,'pass'
end
