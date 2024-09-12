module m1
  type t0
    integer:: i0=10
  end type
  type,extends(t0):: t1
    integer:: i1=1
  end type
  type,extends(t1):: tt1
    integer:: ii1=11
  end type
end
module m2
use m1
type t2
   integer:: i2=2
   type(t1),allocatable:: a2(:)
   type(t1) :: aa2(3)
end type
 type ttt2
   integer:: iii2=12
   type(t2),allocatable:: aaa2
   type(t2) :: bbb2
end type
end
subroutine s1
use m2
type(ttt2):: obj1,obj2
 obj1 = obj2
end
 
 call s1
print *,'pass'
end
