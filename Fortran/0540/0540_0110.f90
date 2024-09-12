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
module m2
contains
 subroutine   sub(x) 
use d
use m1,z0=>x0,z1=>x1
   class(z0),intent(in)::x
   k=0
   select type(x)
    type is(z1)
   k=1
   end select
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
