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
subroutine ext_sub(ext_dmy)
use m1
class(*):: ext_dmy
end subroutine
end interface
 
TYPE(t1) :: obj_t1
 
obj_t1%ii = 8
 
call ext_sub(obj_t1)
end
 
subroutine ext_sub(ext_dmy)
use m1
class(*) :: ext_dmy
if(sizeof(ext_dmy)==4) print*,'PASS'
end subroutine
