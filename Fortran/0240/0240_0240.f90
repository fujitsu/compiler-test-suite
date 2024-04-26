call test()
print *,'pass'
end
subroutine test()
use mod
end

module mod
type t1
real :: x, y
contains
procedure, pass :: fun => afun
end type t1
type, extends(t1) ::t2
real:: z
contains
procedure, pass :: fun => bfun
end type t2
contains
function afun (a, b) result(r)
class (t1), intent (in) :: a, b
real :: r
r = a%x + b%x + a%y + b%y
end function afun
function bfun (a, b) result(r)
class (t2), intent (in) :: a
class (t1), intent (in) :: b
real :: r
select type(b)
type is(t2)
r = a%x + b%x + a%y + b%y + a%z +b%z
end select
end function bfun
end module mod
