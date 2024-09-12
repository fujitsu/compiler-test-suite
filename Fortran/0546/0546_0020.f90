module m1
  type t0
    integer:: i0
  end type
end
module m2
use m1
type t2
   integer:: i2
   type(t0),allocatable:: a2(:)
end type
 type ttt2
   integer:: iii2
   type(t2),allocatable:: aaa2
end type
end
subroutine s1
use m2
type(ttt2),allocatable:: obj1(:),obj2(:)
 allocate(obj2(2))
 allocate(obj1,source=obj2)
end
 
print *,'pass'
end
 
