Module m
procedure(f),pointer :: ptr=>f
contains
function f(d)
integer :: d
f=d
end function
end module

use m
if(associated(ptr) .eqv. .false.)print*,"101"
if (ptr(7) .ne. 7)print*,"121"
print*,"pass"
end 
