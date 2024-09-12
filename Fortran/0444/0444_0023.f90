module m1
implicit none
type ty
    integer :: i 
end type
type ty2
    type(ty) :: callocArray(2)
end type
end module

use m1
implicit none
class(ty2), pointer :: cptr(:)
type(ty2), allocatable :: calloc(:)

allocate(cptr(2))
allocate(calloc, SOURCE = cptr)
print*, "pass"

end program