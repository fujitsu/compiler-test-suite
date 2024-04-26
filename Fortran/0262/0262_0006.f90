Module m1
type ty
procedure(integer),pointer,nopass :: prc
end type

contains
function f(d)
integer :: f
integer :: d
f=d*2
end function
end module
 
use m1
type(ty):: obj
obj%prc=>f
if(obj%prc(3) .ne. 6)print*,"101"
print*,"pass"
end 
