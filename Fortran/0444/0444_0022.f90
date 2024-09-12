module m1
implicit none
type ty
    integer :: i 
end type
type ty2
    type(ty), allocatable :: callocArray(:)
end type
end module

use m1
implicit none
class(ty2), pointer :: cptr
type(ty2), allocatable :: calloc(:)

allocate(cptr)
allocate(calloc(2), SOURCE = cptr)
print*, "pass"

end program
