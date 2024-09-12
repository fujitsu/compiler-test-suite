Module m
type ty1
 procedure(E1),pointer,nopass :: ptr11=>E1
 procedure(E2),pointer,nopass :: ptr21=>E2
end type
type(ty1)::objm
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
type ty
  procedure(E1),pointer,nopass :: ptr1=>E1
  procedure(E2),pointer,nopass :: ptr2=>E2
  type(ty1)::obj
end type
type(ty)::obj2
if(associated(obj2%ptr1) .eqv. .false.)print*,"101",associated(obj2%ptr1)
if(associated(obj2%ptr2) .eqv. .false.)print*,"102",associated(obj2%ptr1)
if(associated(obj2%obj%ptr11) .eqv. .false.)print*,"101",associated(obj2%obj%ptr11)
if(associated(obj2%obj%ptr21) .eqv. .false.)print*,"102",associated(obj2%obj%ptr11)
if (obj2%ptr1(5,6,7) .ne. 18)print*,"103"
if (obj2%ptr2(7) .ne. 8)print*,"104"
if (obj2%obj%ptr11(5,6,7) .ne. 18)print*,"103"
if (obj2%obj%ptr21(7) .ne. 8)print*,"104"
if (objm%ptr11(5,6,7) .ne. 18)print*,"113"
if (objm%ptr21(7) .ne. 8)print*,"114"
print*,"pass"

end
