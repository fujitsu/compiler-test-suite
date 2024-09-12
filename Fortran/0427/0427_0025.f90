module mod0
interface gnr
function FFF()
integer :: FFF
end function
end interface
private
end module

module mod1
use mod0
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
function FFF()
integer :: FFF
FFF = 30
end function

use mod1
class(ty),allocatable :: cptr
allocate(cptr)
select type(cptr)
type is(ty)
cptr%ii = 10
if(cptr%gnr() .NE. 10) print*,"Fail 4"
print*,"Pass"
class default
print*,"Fail 2"
end select
end
