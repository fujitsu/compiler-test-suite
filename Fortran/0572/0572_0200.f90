type ty
complex,allocatable :: aa(:,:)
end type ty

type(ty) :: obj
allocate(obj%aa(10,10))

call sub((/(i,i=fun(obj%aa),10,2)/))
contains
subroutine sub(dmy)
type(*) :: dmy(:)
if(any(lbound(dmy)/=1))print*,"101"
if(is_contiguous(dmy) .NEQV. .TRUE.)print*,"102"
if(any(ubound(dmy)/=5))print*,"101"
print*,"PASS"
end subroutine sub
function fun(dmy2)
integer :: fun
complex::dmy2(:,:)
if(is_contiguous(dmy2) .NEQV. .TRUE.)print*,"105"
if(is_contiguous(dmy2(:,:)%re) .NEQV. .FALSE.)print*,"103"
if(is_contiguous(dmy2(:,:)%im) .NEQV. .FALSE.)print*,"104"
fun=1
end function fun
end
