Module m

type ty
  procedure(E1),pointer,nopass:: ptr1=>E1
end type
private E1,fun
contains
 function fun( A, B, C ) 
 INTEGER A, B,C,fun

 ENTRY E1( A, B, C ) 
 E1=A+B+C
 return
 end function
end module

use m
type(ty)::obj
if(associated(obj%ptr1) .eqv. .false.)print*,"101",associated(obj%ptr1)
if (obj%ptr1(5,6,7) .ne. 18)print*,"103"
print*,"pass"

end
