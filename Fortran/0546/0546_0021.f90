module m1
  type t0
    integer:: i0=3
  end type
end
module m2
use m1
type t2
   integer:: i2=2
end type
 type ttt2
   integer:: iii2=1
end type
end
subroutine ss3()
use m2
type(ttt2),allocatable:: obj1(:),obj2(:)
allocate(obj1(2))
allocate(obj2(2))
 obj1 = obj2 
end
 
call ss3
print *,'pass'
end
 
