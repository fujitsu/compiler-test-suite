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
  type,extends(tb0)::e1
     type(b0)::e11
     integer::e12
  end type
contains
subroutine s1
type(e1),parameter::p1=e1(tb0=tb0(1),e11=b0(2),e12=3)
type(e1),parameter::p2=e1(    tb0(1),e11=b0(2),e12=3)
type(e1),parameter::p3=e1(e11=b0(2),e12=3,tb0=tb0(1))
type(e1),parameter::p4=e1(x1=1,e11=b0(2),e12=3)
type(e1),parameter::p5=e1(e11=b0(2),e12=3,x1=1)
type(e1) ::v1,v2,v3,v4,v5
v1=e1(tb0=tb0(1),e11=b0(2),e12=3)
v2=e1(    tb0(1),e11=b0(2),e12=3)
v3=e1(e11=b0(2),e12=3,tb0=tb0(1))
v4=e1(x1=1,e11=b0(2),e12=3)
v5=e1(e11=b0(2),e12=3,x1=1)
call chk(p1,11)
call chk(p2,12)
call chk(p3,13)
call chk(p4,14)
call chk(p5,15)
call chk(v1,1)
call chk(v2,2)
call chk(v3,3)
call chk(v4,4)
call chk(v5,5)
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
