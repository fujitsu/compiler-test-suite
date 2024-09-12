module m1
type xx
  real(8),pointer::p(:)
end type
type yy
  real(8),allocatable::a(:)
end type
type zz
  type(yy)::ww
end type
type qq
  type(yy),allocatable::ww(:)
end type
contains
subroutine s1(s,ss,sss)
type (xx)::rr,ss
type (yy)::r,s
type (zz)::rrr,sss
type (qq)::rrrr,ssss
k=0
allocate(rr%p(2))
rr%p(2)=1.0
if (rr%p(2)/=1.0)k=1
allocate(ss%p(2))
ss%p(2)=1.0
if (ss%p(2)/=1.0)k=k+2
!
allocate(r%a(2))
r%a(2)=1.0
if (r%a(2)/=1.0)k=k+8
allocate(s%a(2))
s%a(2)=1.0
if (s%a(2)/=1.0)k=k+16
if (k/=0)print *,102,k
!
allocate(rrr%ww%a(2))
rrr%ww%a(2)=1.0
if (rrr%ww%a(2)/=1.0)k=k+8
allocate(sss%ww%a(2))
sss%ww%a(2)=1.0
if (sss%ww%a(2)/=1.0)k=k+16
!
allocate(rrrr%ww(2))
allocate(rrrr%ww(2)%a(2))
rrrr%ww(2)%a(2)=1.0
if (rrrr%ww(2)%a(2)/=1.0)k=k+32
allocate(ssss%ww(2))
allocate(ssss%ww(2)%a(2))
ssss%ww(2)%a(2)=1.0
if (ssss%ww(2)%a(2)/=1.0)k=k+32
!
deallocate(rrrr%ww)
allocate(rrrr%ww(2))
rrrr%ww(2)=yy([1.0,1.0])
if (rrrr%ww(2)%a(2)/=1.0)k=k+64
deallocate(ssss%ww)
allocate(ssss%ww(2))
ssss%ww(2)=yy([1.0,1.0])
if (ssss%ww(2)%a(2)/=1.0)k=k+128
!
if (k/=0)print *,102,k
end subroutine
end
use m1
type (xx)::ss
type (yy)::s
type (zz)::sss
call s1(s,ss,sss)
print *,'pass'
end
