module  m1
type :: t1
integer :: ii
contains
procedure ::   aps=>xproc1
generic  ::    gen=>aps
end type

contains
integer function xproc1(this,x, y)
class(t1):: this
integer, intent(in):: x, y
xproc1=x+y+this%ii
end function 
end module

program test
use m1
implicit none
type(t1) :: obj
obj%ii=10
print *, fun(obj%aps(1,2))
print *, fun(obj%gen(1,2))
print *, "Pass"
contains 
integer  function fun(dumy)
integer :: dumy
fun=dumy
end function
end

