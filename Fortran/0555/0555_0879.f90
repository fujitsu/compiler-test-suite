module mod1
type:: ty
contains
procedure,nopass :: prc=> fun1
generic:: gen=>prc
end type
contains
function fun1()
integer :: fun1
fun1 = 10
end function
end module

module mod2
use mod1
private
end module
module mod3
use mod2
end module
print *,"PASS"
end
