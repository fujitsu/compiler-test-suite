type ty
character :: aa(10,10)
end type ty

type(ty) :: obj

call sub(obj%aa(1:10:2,1:10:2))
contains
subroutine sub(dmy)
type(*) :: dmy(5,*)
if(is_contiguous(dmy) .NEQV. .TRUE.)print*,"101"
print*,"PASS"
end subroutine sub
end
