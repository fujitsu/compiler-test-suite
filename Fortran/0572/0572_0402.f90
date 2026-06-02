type ty
integer :: aa(10,10)
end type ty

type(ty) :: obj

call sub((/(i,i=fun(obj%aa),10,2)/))
contains
subroutine sub(dmy)
integer :: dmy(..)
if(any(lbound(dmy)/=1))print*,"101"
if(is_contiguous(dmy) .NEQV. .TRUE.)print*,"102"
print*,"PASS"
end subroutine sub
function fun(dmy2)
integer :: fun
type(*)::dmy2(..)
if(is_contiguous(dmy2) .NEQV. .TRUE.)print*,"103"
fun=1
end function fun
end
