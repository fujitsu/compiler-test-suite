Module m
contains
function fun(dmy)
integer :: dmy
fun=dmy*2
end function

function f2()
integer :: f2
TYPE ty
  PROCEDURE (fun), POINTER,nopass :: COMPONENT =>fun
END TYPE 
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

