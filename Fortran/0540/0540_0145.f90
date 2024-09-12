module m1
  type x0
    integer::x01
  end type
  type,extends(x0)::x1
    integer::x11
  end type
end
module d
contains 
subroutine s1(d1)
use m1
class(x1),allocatable:: d1
end subroutine
end
module md
use d
use m1
end
module m2
contains
 subroutine   sub(x) 
use md
   class(x0),intent(in)::x
   type(x0)::y
    k=0
   if (extends_type_of(x,y)) k=1
if (k/=1) print *,2002
 end subroutine 
end
use m1
use m2
class(x1),allocatable:: v00
allocate(v00)
v00%x01=1
call sub  (v00 )

print *,'pass'
end
