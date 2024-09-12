module m1
type ty1
character(LEN=:),allocatable::ch1
end type
type,extends(ty1)::ty2
character(LEN=:),allocatable::ch2(:)
end type
end module

program main
use m1
type(ty2)::obj
call sub1(obj)
if (LEN(obj%ch1)/=8)print*,103
print*,"pass"
contains
subroutine sub1(d1)
class(ty2),target::d1
allocate(character(LEN=10)::d1%ch2(2:5))
call sub2(d1)
end subroutine

subroutine sub2(d2)
class(ty2),pointer,intent(in)::d2
if (.not.associated(d2))print*,"error",101
if (LEN(d2%ch2)/=10)print*,102
if (size(d2%ch2)/=4)print*,104
if (ubound(d2%ch2,1) /= 5)print*,105
allocate(character(LEN=8)::d2%ch1)
end subroutine
end program
