module  m1
type :: t1
integer :: ii
procedure(yproc2),pointer,pass(kk) :: ttt
contains
procedure, pass(obj)     :: bps=>yproc2
procedure, nopass        :: cps=>yproc2
procedure, pass(kk)      :: dps=>yproc2
end type

contains
subroutine xproc1(dum, x, y)
class(t1), intent(inout)::dum
integer, intent(in)::  y
integer ::  z
class(*) :: x
z = y+dum%ii
z = z-10
select type(x) 
type is (integer)
print *, "x= ", x
class default 
print*, "default"
end select
if(dum%ii .NE. 10) print*,"Err 1"
print*,"Pass"
end subroutine 

subroutine yproc2(obj,i,kk,j)
class(t1), intent(inout)::obj
class(t1), intent(inout)::kk
integer :: i, j
kk%ii =i+j+obj%ii+kk%ii
obj%ii=10
if(obj%ii .NE. 10) print*,"Err 2"
print*,"Pass"
end subroutine

subroutine procpointer(obj,i,kk,j)
class(t1), intent(inout)::obj
class(t1), intent(inout)::kk
integer :: i, j
kk%ii=i+j+obj%ii
obj%ii = 10
if(obj%ii .NE. 10) print*,"Err 3"
print*,"Pass"
end subroutine

end module

program test
use m1
implicit none
TYPE (t1), pointer :: obj
allocate(obj)
obj%ii=10
obj%ttt=>procpointer
call obj%ttt(obj,1,2)
call obj%cps(obj,1,obj,2)
call obj%bps(1,obj,2)
call obj%dps(obj,1,2)
end
