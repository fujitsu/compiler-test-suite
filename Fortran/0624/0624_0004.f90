module mod1
type ty
  integer::x
end type
type,extends(ty) :: tty
integer :: kk
procedure(fun),pointer :: prc
end type

contains
function fun(dmy)
class(tty):: dmy
integer :: fun
print*,"fun called"
fun = 10
end function
end module
use mod1
print *,'pass'
end
