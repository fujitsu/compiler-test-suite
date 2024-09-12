Module m

type ty
  procedure(E1),pointer,nopass:: ptr1=>E1
end type
contains
 function fun( A, B, C ) 
 INTEGER A, B,C,fun

 ENTRY E1( A, B, C ) 
 E1=A+B+C
 return
 end function
end module

module m2
use m,E9=>E1
type ty2
  procedure(E9),pointer,nopass:: ptr1=>E9
end type
end
use m2
type(ty)::obj
type(ty2)::obj2
if(associated(obj%ptr1) .eqv. .false.)print*,"101",associated(obj%ptr1)
if(associated(obj2%ptr1) .eqv. .false.)print*,"101",associated(obj%ptr1)
if (obj%ptr1(5,6,7) .ne. 18)print*,"103"
if (obj2%ptr1(5,6,7) .ne. 18)print*,"103"
print*,"pass"

end
