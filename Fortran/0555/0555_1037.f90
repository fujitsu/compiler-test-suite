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
function ext_fun(ext_dmy)
use m1
class(t2),pointer:: ext_dmy
type(t2),pointer :: ext_fun
end function
end interface
 
TYPE(t2),target :: obj_t1

class(t2), pointer :: ptr
class(t2), pointer :: outptr
 
obj_t1%ii = 6
obj_t1%jj = 8

ptr=>obj_t1
 
outptr=> ext_fun(ptr)
end
 
function ext_fun(ext_dmy)
use m1
class(t2),pointer :: ext_dmy
type(t2),pointer :: ext_fun
if(ext_dmy%ii==6) print*,'PASS'
ext_fun=>ext_dmy
end function

