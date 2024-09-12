module mod1
interface 
real function cc()
end function
end interface 

type base
integer :: ii
contains
procedure , NOPASS :: prc=>fun1 
end type

type,extends(base) :: deriv1
contains
procedure , NOPASS:: prc=>fun2
end type

contains
subroutine fun1(bb)
procedure(real) , pointer :: bb
real :: jj
bb=>cc
jj=bb()
if (10.00 .NE. jj) print*, "Error"
print*, "Pass"
end subroutine

subroutine fun2(bb)
procedure(real) , pointer :: bb
real :: jj
bb=>cc
jj=bb()
if (10.00 .NE. jj) print*, "Error"
print*, "Pass"
end subroutine
end module

use mod1
procedure(real) , pointer ::pp 
class(base), pointer :: ptr
type(deriv1), target :: obj
obj%ii=10
ptr=>obj
call ptr%prc(pp)
end


real function cc()
cc=10.00
end function
