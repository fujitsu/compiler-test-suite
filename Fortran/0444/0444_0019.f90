module m1
implicit none
type ty
    integer :: i = 10
end type
type ty2
    class(ty), allocatable :: callocArray(:)
end type
end module

use m1
implicit none
class(ty2), pointer :: cptr(:)
type(ty2), allocatable :: calloc(:)

allocate(cptr(1))
allocate(calloc, SOURCE = cptr)
print*, "pass"

end program
