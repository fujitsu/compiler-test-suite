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
subroutine s1
type(e1),parameter::pe=e1(x1=1,e11=e0(y1=2),e12=3)
type(e1):: ve
ve=e1(x1=1,e11=e0(y1=2),e12=3)
write(11,*)pe
write(11,*)ve
rewind 11
read(11,*) k1,k2,k3
if (any([k1,k2,k3]/=[1,2,3]))print *,101
read(11,*) k1,k2,k3
if (any([k1,k2,k3]/=[1,2,3]))print *,102

end subroutine
end
use m2
call s1
print *,'pass'
end
