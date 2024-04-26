module mod1
type base
end type
type ty
integer :: ii
type(base) :: obj
end type
contains
subroutine fun(dmy,ii)
class(ty),intent(out) :: dmy
dmy%ii = dmy%ii + ii
end subroutine
end module
use mod1
print *,'pass'
end

