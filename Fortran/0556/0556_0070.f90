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
print*, "z" , z%i
print*, "y" , y
print*,"Pass"
end subroutine
end module 

program test
use m
type(t) :: obj 
integer :: x
real:: y
x=10
y=20.00
x=x+10
obj%i=20
call obj%sub(y=2.0)
y=y-2
end
