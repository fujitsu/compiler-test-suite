module m1
type ty
character(len=2) :: cc(3,3)
end type ty
contains 
subroutine sub(dmy)
type(*) :: dmy(:)
if(is_contiguous(dmy) .neqv. .FALSE.)print*,"101"
print*,"pass"
end subroutine sub
end module m1

use m1
type(ty)::obj
call sub(obj%cc(1,1:3))
end
