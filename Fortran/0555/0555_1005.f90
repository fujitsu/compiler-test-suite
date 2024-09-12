module m1
type t1
integer :: ii
end type
 
type,extends(t1) :: t2
integer :: jj
end type
 
type,extends(t2) :: t3
integer :: zz
end type
end module
 
program main
 
use m1
implicit none

interface
function ext_sub(ext_dmy)
use m1
class(*),pointer:: ext_dmy
type(t3),pointer:: ext_sub
end function
end interface
 
TYPE(t2),target :: obj_t2

class(*), pointer :: ptr
class(*), pointer ::outptr
 
obj_t2%ii = 6
obj_t2%jj = 8

ptr=>obj_t2
 
outptr=> ext_sub(ptr)
if(sizeof(outptr)==12) print*,'PASS'
end
 
function ext_sub(ext_dmy)
use m1
class(*),pointer :: ext_dmy
type(t3),pointer :: ext_sub
allocate(ext_sub)

select type(ext_dmy)
type is(t2)
 ext_sub=t3(ext_dmy,11)
end select
end function

