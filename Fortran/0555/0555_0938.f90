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
interface
integer function  bb(c,d,e)
integer :: c,d
real :: e
end function
end interface
integer :: jj
jj=10
print *, jj
end subroutine

subroutine fun2(bb)
interface
integer function  bb(e,f, g)
integer :: e,f
real :: g 
end function
end interface
integer :: jj
jj=bb(10,10,20.00)
if(jj .NE. 20) print *, "Error -1"
print*, "Pass"
end subroutine
end module

use mod1
interface
integer function  cc(a,b,c)
integer :: a, b
real    :: c
end function
end interface
class(base), pointer :: ptr
type(deriv1), target :: obj
obj%ii=10
ptr=>obj
call ptr%prc(cc)
end

integer function  bb(a,b)
integer :: a,b
bb=a+b
end function

integer function cc(a,b,c)
integer :: a,b
real :: c
cc=c
cc=a+b
end function
