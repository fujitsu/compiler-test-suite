module m1
type b
  integer::ba(2,3)
  integer::bb     =3
end type
type ,extends(b):: e1
  integer::e1a=1
  integer::e1b=4
end type
contains
subroutine s2
type(e1),parameter::p01=e1(2)
type(e1)          ::v01
v01=e1(2)
call chk2(p01,v01)
end subroutine
subroutine chk2(d1,d2)
type(e1)          ::d1,d2
if (any(d1%ba/=2))print *,2101
if (   (d1%bb/=3))print *,2103
if (   (d1%e1a/=1))print *,2104
if (   (d1%e1b/=4))print *,2105
if (any(d2%ba/=2))print *,2201
if (   (d2%bb/=3))print *,2103
if (   (d2%e1a/=1))print *,2104
if (   (d2%e1b/=4))print *,2105
end subroutine
end
use m1
call s2
print *,'pass'
end
