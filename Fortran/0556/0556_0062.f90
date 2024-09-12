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
select type(x) 
type is (integer)
print *, "x= ", x
class default
print*, "default"
end select
if(dum%ii .NE. y) print*,"Err 1"
print*,"Pass"

end subroutine 

subroutine yproc2(obj,i,kk,j)
class(t1), intent(inout)::obj
class(t1), intent(inout)::kk
integer :: i, j
kk%ii=i+j+obj%ii
obj%ii = 10
if(10 .NE. obj%ii) print*,"Err 2"
print*,"Pass"
end subroutine
end module

program test
use m1
implicit none
TYPE (t1), pointer :: obj
TYPE (t1), pointer :: obj1
allocate(obj)
allocate(obj1)
obj%ii=10
obj1%ii=10
call obj%cps(obj,1,obj1,2)
call obj%bps(1,obj1,2)
call obj%dps(obj1,1,2)
end


