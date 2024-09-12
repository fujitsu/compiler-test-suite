Module m
type ty
  procedure(E1),pointer,nopass:: ptr1=>E1
end type
type ty1
  procedure(E1),pointer,nopass:: ptr1=>E1
end type
type(ty)::obj
type(ty1)::obj2
contains
 function fun( A, B, C ) 
 INTEGER A, B,C,fun

 ENTRY E1( A, B, C ) 
 E1=A+B+C
 return
 end function
end module
module m2
use m , only :obj
type ty1
  procedure(E1),pointer,nopass:: ptr1=>E1
end type
type(ty1)::obj5
contains
 function fun( A, B, C ) 
 INTEGER A, B,C,fun
 ENTRY E1( A, B, C ) 
 E1=A+B-C
 return
 end function
end
use m2
use m , only :obj2
if(associated(obj%ptr1) .eqv. .false.)print*,"101",associated(obj%ptr1)
if (obj%ptr1(5,6,7) .ne. 18)print*,"103"
if (obj5%ptr1(5,6,7) .ne. 4)print*,"106"
print*,"pass"

end
