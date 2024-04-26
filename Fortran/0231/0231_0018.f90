module mod1
interface xxx
subroutine sub(dmy)
type ty
integer :: jj
end type
type(ty) :: dmy
end subroutine
end interface
end module
use mod1
print *,'pass'
end
