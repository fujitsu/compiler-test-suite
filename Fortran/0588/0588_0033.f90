Module m

contains
 function fun( A, B, C ) 
 INTEGER A, B,C,fun

 ENTRY E1( A, B, C ) 
 E1=A+B+C
 return
 end function
end module

module m2
use m
type ty
  procedure(E1),pointer,nopass:: ptr1
end type

type ty1
  type(ty)::obj(4) = [ty(E1),ty(E1),ty(E1),ty(E1)]
end type

end module

use m2
type(ty1)::obj1
if(associated(obj1%obj(1)%ptr1) .eqv. .false.)print*,"101",associated(obj1%obj(1)%ptr1)
if (obj1%obj(1)%ptr1(5,6,7) .ne. 18)print*,"103"
print*,"pass"

end
