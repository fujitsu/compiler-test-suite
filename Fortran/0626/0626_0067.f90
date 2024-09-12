module m1
  type b0
     integer::x1
  end type
end 
module m2
  use m1,tb0=>b0
  type b0
     integer::y1
  end type
  type e1
     type(tb0)::tb0v
     type(b0)::e11
     integer::e12
  end type
contains
subroutine s1
type(e1),parameter::p1=e1(tb0v=tb0(1),e11=b0(2),e12=3)
type(e1),parameter::p3=e1(e11=b0(2),e12=3,tb0v=tb0(1))
type(e1) ::v1,   v3
v1=e1(tb0v=tb0(1),e11=b0(2),e12=3)
v3=e1(e11=b0(2),e12=3,tb0v=tb0(1))
call chk(p1,11)
call chk(p3,13)
call chk(v1,1)
call chk(v3,3)
end subroutine
subroutine chk(t,n)
type(e1)::t
rewind 1
write(1,*) t
rewind 1
read(1,*) k1,k2,k3
if (any([k1,k2,k3]/=[1,2,3]))print *,n,k1,k1,k3
end subroutine
end
use m2
call s1
print *,'pass'
end
