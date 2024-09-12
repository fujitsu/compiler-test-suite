Module m
type ty
 procedure(E1),pointer,nopass :: ptr1=>E1
 procedure(E2),pointer,nopass :: ptr2=>E2
 procedure(E3),pointer,nopass :: ptr3=>E3
 procedure(E4),pointer,nopass :: ptr4=>E4
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
 subroutine sub( A, B, C ,D) 
 INTEGER A, B,C,D

 ENTRY E3( A, B, C ) 
 return
 
 ENTRY E4(D)
end subroutine

end module

use m
type(ty)::obj

if(associated(obj%ptr1) .eqv. .false.)print*,"101",associated(obj%ptr1)
if(associated(obj%ptr2) .eqv. .false.)print*,"102",associated(obj%ptr2)
if(associated(obj%ptr3) .eqv. .false.)print*,"103",associated(obj%ptr3)
if(associated(obj%ptr4) .eqv. .false.)print*,"104",associated(obj%ptr4)
if (obj%ptr1(5,6,7) .ne. 18)print*,"103"
if (obj%ptr2(7) .ne. 8)print*,"104"
call obj%ptr3(1,2,3)
call obj%ptr4(1)
print*,"pass"

end
