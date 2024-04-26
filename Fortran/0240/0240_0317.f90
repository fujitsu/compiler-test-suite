call test()
print *,'pass'
end
module mod
type two_real
real :: x,y
contains
procedure, pass :: two_real_fun=> fun
end type two_real
contains
real function fun (a, b)
class (two_real), intent (in) :: a, b
fun = a%x + b%x
end function fun
end module
subroutine test()
use mod
type (two_real) :: str
str%x=1
str%y=str%x
end
