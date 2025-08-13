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
subroutine sub2
type(e1),parameter::pe=e1(tb0(x1=1),e11=b0(y1=2),e12=3)
type(e1):: ve
ve=e1(tb0(x1=1),e11=b0(y1=2),e12=3)
write(7,*)pe
write(7,*)ve
rewind 7
read(7,*) k1,k2,k3
if (any([k1,k2,k3]/=[1,2,3]))print *,101
read(7,*) k1,k2,k3
if (any([k1,k2,k3]/=[1,2,3]))print *,102
end subroutine
end
module m3
use m2,ttb0=>tb0,yb0=>b0,te1=>e1
  type b0
     integer::z1
  end type
  type,extends(te1)::e1
     type(b0)::f21
     integer::f22
  end type
contains
subroutine s3
type(e1),parameter::p=e1(ttb0(x1=1),e11=yb0(y1=2),e12=3,f21=b0(z1=4),f22=5)
type(e1):: v
v= e1(ttb0(x1=1),e11=yb0(y1=2),e12=3,f21=b0(z1=4),f22=5)
write(8,*)p
write(8,*)v
rewind 8
read(8,*) k1,k2,k3,k4,k5
if (any([k1,k2,k3,k4,k5]/=[1,2,3,4,5]))print *,111
read(8,*) k1,k2,k3,k4,k5
if (any([k1,k2,k3,k4,k5]/=[1,2,3,4,5]))print *,112
end subroutine
end
use m3
call sub2
call s3
print *,'pass'
end
