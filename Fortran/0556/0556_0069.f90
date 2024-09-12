module m
type :: t
  integer :: i
 contains
  procedure, pass(z) :: sub
 end type t

contains
subroutine sub(x,y,z)
integer,optional :: x
real:: y
class (t) :: z
print*, "z =" , z%i
print*, "y =" , y 
if(present(x)) print*, "x present"
 print*, "Pass"
end subroutine
end module 


program test
use m
type(t) :: obj 
integer :: x
real:: y
x=10
y=20.00
obj%i=20
call obj%sub(y=2.0)
x=x-10
y=y+20.00
end

