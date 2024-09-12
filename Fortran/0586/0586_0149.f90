Module m
contains
function fun(dmy)
integer :: dmy
entry E1(dmy)
 E1=dmy*2
 return
end function

function f2()
TYPE ty
  PROCEDURE (E1), POINTER,nopass :: COMPONENT =>E1
END TYPE 
integer :: f2
type(ty) :: obj
if(associated(obj%COMPONENT) .eqv. .false.)print*,"101"
if (obj%COMPONENT(4) .ne. 8)print*,"102"
f2=obj%COMPONENT(4)
end
end module

use m
if (f2() .ne. 8)print*,"103"
print*,"pass"
end

