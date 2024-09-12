module  m1
type :: t1
integer :: ii
contains
procedure , NOPASS::   aps=>xproc1
end type

contains
integer function xproc1(x, y)
integer, intent(in):: x, y
print *, "PROC1 - called"
xproc1=x+y 
end function 
end module

program test
use m1
implicit none
type(t1) :: obj
obj%ii=10
call sub(obj%aps(1,2))
print*, "Pass"
contains 
subroutine sub(dumy)
integer :: dumy
print*, dumy
end subroutine 
end

