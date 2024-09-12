module m1
type t1
integer :: ii=0
end type
 
type,extends(t1) :: t2
integer :: jj=0
end type
 
type,extends(t2) :: t3
integer :: zz=0
end type

contains
subroutine ext_sub(ext_dmy)
class(*), allocatable :: ext_dmy
if(sizeof(ext_dmy)==8) print*,'PASS'
end subroutine

end module
 
program main
 
use m1
implicit none

TYPE(t2),target :: obj_t1
class(*), allocatable :: ptr
 
allocate (ptr, source = obj_t1)
obj_t1%ii = 6
obj_t1%jj = 8
 
call ext_sub(ptr)

end
