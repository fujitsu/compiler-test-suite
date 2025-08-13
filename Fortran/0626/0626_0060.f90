module m1
  type b0
     integer::x1
  end type
end
module m2
  use m1
  type e0
     integer::y1
  end type
  type,extends(b0)::e1
     type(e0)::e11
     integer::e12
  end type
contains
subroutine sub2
type(e1),parameter::pe=e1(x1=1,e11=e0(y1=2),e12=3)
type(e1):: ve
ve=e1(x1=1,e11=e0(y1=2),e12=3)
write(9,*)pe
write(9,*)ve
rewind 9
read(9,*) k1,k2,k3
if (any([k1,k2,k3]/=[1,2,3]))print *,101
read(9,*) k1,k2,k3
if (any([k1,k2,k3]/=[1,2,3]))print *,102
end subroutine
end
module m3
use m2
  type f1
     integer::z1
  end type
  type,extends(e1)::f2
     type(f1)::f21
     integer::f22
  end type
contains
subroutine s3
type(f2),parameter::p=f2(x1=1,e11=e0(y1=2),e12=3,f21=f1(z1=4),f22=5)
type(f2):: v
v= f2(x1=1,e11=e0(y1=2),e12=3,f21=f1(z1=4),f22=5)
write(10,*)p
write(10,*)v
rewind 10
read(10,*) k1,k2,k3,k4,k5
if (any([k1,k2,k3,k4,k5]/=[1,2,3,4,5]))print *,111
read(10,*) k1,k2,k3,k4,k5
if (any([k1,k2,k3,k4,k5]/=[1,2,3,4,5]))print *,112
end subroutine
end
use m3
call sub2
call s3
print *,'pass'
end
