module mod1

interface
integer function cc()
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
procedure(integer) , pointer :: bb
integer :: jj
jj=10
print *, jj
end subroutine

subroutine fun2(bb)
procedure(integer) , pointer :: bb
integer :: jj
bb=>cc
jj=bb()
if(jj .NE. 10 ) print*, "Error"
print*, "Pass"
end subroutine
end module

use mod1
procedure(integer) , pointer :: pp 
class(base), pointer :: ptr
type(deriv1), target :: obj
obj%ii=10
ptr=>obj
call ptr%prc(pp)
end

integer function  bb(a,b)
integer :: a,b
bb=a+b
end function

integer function cc()
cc=10
end function
