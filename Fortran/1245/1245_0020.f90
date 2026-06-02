module m1
type x
 integer::x1
end type
type y
 integer::y1
end type
contains
  function s(d1,d2) result(r)
    logical::r
    type(x),intent(in)::d1
    integer,intent(in)::d2
    if (d1%x1/=d2) print *,1003
    r=.false.
  end
  function t(d1,d2) result(r)
    logical::r
    type(y),intent(in)::d1
    integer,intent(in)::d2
    if (d1%y1/=d2) print *,1004
    r=.false.
  end
end
use m1
type(x)::vx
type(y)::vy
procedure(s),pointer::p
procedure(t),pointer::q
interface operator  (+)
 procedure ::p,s2,q,t2
end interface
p=>s
q=>t
vx%x1=1
if (vx+ 1) print *,1001
vx%x1=2
if (vx+ 2_8) print *,1003
vy%y1=1
if (vy+ 1) print *,1002
vy%y1=2
if (vy+ 2_8) print *,1004
print *,'sngg734p : pass'
contains
  function s2(d1,d2) result(r)
    logical::r
    type(x),intent(in)::d1
    integer(8),intent(in)::d2
    if (d1%x1/=d2) print *,1003
    r=.false.
  end
  function t2(d1,d2) result(r)
    logical::r
    type(y),intent(in)::d1
    integer(8),intent(in)::d2
    if (d1%y1/=d2) print *,1004
    r=.false.
  end
end
