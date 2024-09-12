Module m
procedure(E1),pointer :: ptr11=>E1
procedure(E2),pointer :: ptr21=>E2
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
procedure(E1),pointer :: ptr1=>E1
procedure(E2),pointer :: ptr2=>E2

if(associated(ptr1) .eqv. .false.)print*,"101",associated(ptr1)
if(associated(ptr2) .eqv. .false.)print*,"102",associated(ptr1)
if(associated(ptr11) .eqv. .false.)print*,"101",associated(ptr1)
if(associated(ptr21) .eqv. .false.)print*,"102",associated(ptr1)
if (ptr1(5,6,7) .ne. 18)print*,"103"
if (ptr2(7) .ne. 8)print*,"104"
if (ptr11(5,6,7) .ne. 18)print*,"103"
if (ptr21(7) .ne. 8)print*,"104"
print*,"pass"

end
