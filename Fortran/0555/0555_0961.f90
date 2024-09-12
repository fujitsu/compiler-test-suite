module mod1

interface 
integer function  sub1(dum)
integer :: dum
end function

integer function  sub2(dum)
integer :: dum
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
procedure(sub2), pointer :: bb
integer :: jj
jj=10
print *, jj
end subroutine

subroutine fun2(bb)
procedure(sub1), pointer :: bb
integer :: jj
bb=>f1
jj=bb(10)
if(jj .NE. 10) print *, "Error -1"
print*, "Pass"
end subroutine

function f1(a)
integer :: a
integer :: f1
f1=a
end function

end module

use mod1
class(base), pointer :: ptr
type(deriv1), target :: obj
procedure(sub1), pointer ::pp
obj%ii=10
ptr=>obj
call ptr%prc(pp)
end


