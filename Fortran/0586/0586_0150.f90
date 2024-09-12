Module m
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
procedure(E1),pointer :: ptr1=>E1
procedure(E2),pointer :: ptr2=>E2
procedure(E3),pointer :: ptr3=>E3
procedure(E4),pointer :: ptr4=>E4

if(associated(ptr1) .eqv. .false.)print*,"101",associated(ptr1)
if(associated(ptr2) .eqv. .false.)print*,"102",associated(ptr2)
if(associated(ptr3) .eqv. .false.)print*,"103",associated(ptr3)
if(associated(ptr4) .eqv. .false.)print*,"104",associated(ptr4)
if (ptr1(5,6,7) .ne. 18)print*,"103"
if (ptr2(7) .ne. 8)print*,"104"
call ptr3(1,2,3)
call ptr4(1)
print*,"pass"

end
