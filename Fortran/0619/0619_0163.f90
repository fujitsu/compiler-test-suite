module m1
type b
  integer::ba(2,3)
  integer::bb(2,3)=3
end type
type ,extends(b):: e1
  integer::e1a(2,3)=1
  integer::e1b(2,3)=4
end type
type ,extends(e1):: e2
  integer::e2a(2,3)=5
  integer::e2b(2,3)=6
end type
contains
subroutine s2
type(e2),parameter::p07=e2(2,3,3,e2b=16,e2a=15)
type(e2)          ::v07
v07=e2(2,3,3,e2b=16,e2a=15)
call chk2(p07,v07)
end subroutine
subroutine chk2(d1,d2)
type(e2)          ::d1,d2
if (any(d1%ba/=2))print *,2101
if (any(d1%bb/=3))print *,2103
if (any(d1%e1a/=3))print *,2104
if (any(d1%e1b/=4))print *,2105
if (any(d1%e2a/=15))print *,2106
if (any(d1%e2b/=16))print *,2107
if (any(d2%ba/=2))print *,2201
if (any(d2%bb/=3))print *,2103
if (any(d2%e1a/=3))print *,2104
if (any(d2%e1b/=4))print *,2105
if (any(d2%e2a/=15))print *,2106
if (any(d2%e2b/=16))print *,2107
end subroutine
end
use m1
call s2
print *,'pass'
end
