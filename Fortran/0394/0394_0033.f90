module m1
type xx
  complex(8),allocatable::p(:)
end type
type yy
  complex(8),pointer::a(:)
end type
type zz
  type(yy)::ww
end type
type qq
  type(yy),allocatable::ww(:)
end type
  complex(8),target ::t(2)=[1,1]
contains
subroutine s1(s,sss)
type (xx)::rr
type (yy)::r,s
type (zz)::rrr,sss
k=0
allocate(rr%p(2))
rr%p(2)=1.0
if (rr%p(2)/=1.0)k=1
allocate(r%a(2))
r%a(2)=1.0
if (r%a(2)/=1.0)k=k+8
allocate(s%a(2))
s%a(2)=1.0
if (s%a(2)/=1.0)k=k+16
allocate(rrr%ww%a(2))
rrr%ww%a(2)=1.0
if (rrr%ww%a(2)/=1.0)k=k+8
allocate(sss%ww%a(2))
sss%ww%a(2)=1.0
if (sss%ww%a(2)/=1.0)k=k+16
if (k/=0)print *,1102,k
end subroutine
end
use m1
type (yy)::s
type (zz)::sss
call s1(s,sss)
print *,'pass'
end
