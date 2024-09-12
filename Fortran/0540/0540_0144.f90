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
module mmm
use d
use m1
end
module m2
contains
 subroutine   sub(x) 
use mmm
   class(x0),intent(in)::x
   type(x1)::y
    k=0
   if (same_type_as(y,x)) k=1
if (k/=1) print *,2002
 end subroutine 
end
module m11
use m1
use m2
end
use m11
class(x1),allocatable:: v00
allocate(v00)
v00%x01=1
call sub  (v00 )

print *,'pass'
end
