interface
function fun(dmy)
integer :: dmy
end function
end interface
TYPE ty
  PROCEDURE (fun), POINTER,nopass :: COMPONENT =>fun
END TYPE
type(ty) :: obj
if(associated(obj%COMPONENT) .eqv. .false.)print*,"101"
if (obj%COMPONENT(4) .ne. 8)print*,"102"
print*,"pass"
end

function fun(dmy)
integer :: dmy
fun=dmy*2
end function
