module  m1
type :: t1
integer :: ii
contains
procedure, pass(obj)     :: bps=>yproc2
procedure, nopass        :: cps=>yproc2
procedure, pass(kk)      :: dps=>yproc2
end type

contains
subroutine xproc1(dum, x, y)
class(t1), intent(inout)::dum
integer, intent(in)::  y
class(*) :: x
dum%ii = y
if(dum%ii .NE. y) print*,"Err 1"
print*,"Pass"

end subroutine 

subroutine yproc2(obj,i,kk,j)
class(t1), intent(inout)::obj
class(t1), intent(inout)::kk
integer :: i, j
kk%ii=i+j+obj%ii
if(kk%ii .NE. i+j+obj%ii) print*,"Err 2"
print*,"Pass"
end subroutine

end module

program test
use m1
implicit none
TYPE (t1), pointer :: obj
TYPE (t1), pointer :: obj2
allocate(obj,obj2)
obj%ii=10
call obj%cps(obj,1,obj2,2)
call obj%bps(1,obj2,2)
call obj%dps(obj2,1,2)
end
