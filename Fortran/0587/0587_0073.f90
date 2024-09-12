Module m

type ty
procedure(E1),pointer,nopass :: ptr1=>E1
procedure(E2),pointer,nopass :: ptr2=>E2
end type
contains
 function fun( A, B, C ,D) 
 INTEGER A, B,C,D,FUN

 ENTRY E1( A, B, C ) 
 E1=A+B+C
 return
 
 ENTRY E2(D)
 E2=D+1

 end function
end module

use m
type(ty)::obj
if(associated(obj%ptr1) .eqv. .false.)print*,"101",associated(obj%ptr1)
if(associated(obj%ptr2) .eqv. .false.)print*,"102",associated(obj%ptr1)
if (obj%ptr1(5,6,7) .ne. 18)print*,"103"
if (obj%ptr2(7) .ne. 8)print*,"104"
print*,"pass"

end
