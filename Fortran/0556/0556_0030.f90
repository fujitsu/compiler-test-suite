module mod1
type ty
integer :: ii
contains
procedure :: prc=>fun
generic :: gnr=>prc
end type
type(ty) :: obj
contains
function fun(dmy)
integer :: fun
class(ty) :: dmy
fun = 10
select type(dmy)
type is(ty)
print*,"Pass 2"
class default
print*,"Fail 3"
end select
end function
end module

use mod1
use mod1,only :ppp=> ty
class(ppp),allocatable :: cptr
allocate(cptr)
if(cptr%gnr() .NE. 10) print*,"Fail 4"
end
