type ty
integer :: aa(10,10)
end type ty

type(ty) :: obj

call sub(obj%aa(1:10:2,1:10:2))
contains
subroutine sub(dmy)
type(*) :: dmy(:,:)
if(any(lbound(dmy)/=1))print*,"101"
if(is_contiguous(dmy) .NEQV. .FALSE.)print*,"102"
print*,"PASS"
end subroutine sub
end
