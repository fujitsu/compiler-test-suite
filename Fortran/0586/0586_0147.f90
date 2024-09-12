Module m
  procedure(E1),pointer :: ptr=>E1
contains
 function fun(A)
   integer :: A
   entry E1(A)
   E1=A-2
   return
 end function
end module

use m
if(associated(ptr) .eqv. .false.)print*,"101",associated(ptr)
if(ptr(5) .ne.  3)print*,"102"
print*,"pass"
end
