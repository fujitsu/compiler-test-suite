external::sub
TYPE ty
  PROCEDURE (integer), POINTER,nopass :: COMPONENT =>sub
END TYPE 
type(ty) :: obj
  PROCEDURE (integer), POINTER:: COMPONENT1 =>sub
obj%COMPONENT=>sub
COMPONENT1 =>sub
if(associated(obj%COMPONENT) .eqv. .false.)print*,"101"
if (obj%COMPONENT(4) .ne. 8)print*,"102"
print*,"pass"
end

function fun(dmy)
integer :: dmy
fun=dmy*2
end function
subroutine sub(dmy)
integer::dmy
dmy=30
end subroutine
