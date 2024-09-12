module mod1
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
CHARACTER :: bb  

if (bb .NE. 'A') print*, "Error"
print*, "Pass"
end subroutine

subroutine fun2(bb)
CHARACTER :: bb

if (bb .NE. 'A') print*, "Error"
print*, "Pass"
end subroutine
end module

use mod1
class(base), pointer :: ptr
type(deriv1), target :: obj
CHARACTER ::aa
obj%ii=10
ptr=>obj
aa='A'
call ptr%prc(aa)
end

