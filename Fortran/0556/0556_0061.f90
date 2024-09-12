module  m1
type :: t1
integer :: ii
contains
procedure, pass(obj)     :: bps=>yproc2
procedure, nopass        :: cps=>yproc2
generic::  gen=> bps
end type

contains
subroutine xproc1(dum, x, y)
class(t1), intent(inout)::dum
integer, intent(in)::  y
class(*) :: x
dum%ii=y
if(dum%ii .NE. y) print*,"Err 1"
print*,"Pass"

select type(x)
type is (integer)
print *, "x= ", x
class default
print*, "default"
end select

end subroutine 

subroutine yproc2(obj, i, j)
class(t1), intent(inout)::obj
integer :: i, j
obj%ii= i+j 
if(obj%ii .NE. i+j) print*,"Err 2"
print*,"Pass"
end subroutine

end module

program test
use m1
implicit none
TYPE (t1), pointer :: obj
allocate(obj)
obj%ii=10
call obj%cps(obj,1,2)
call obj%bps(1,2)
end
