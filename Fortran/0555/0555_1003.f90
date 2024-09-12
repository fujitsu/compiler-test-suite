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

contains
subroutine ext_sub(ext_dmy)
class(t2), allocatable :: ext_dmy
if(ext_dmy%ii==6) print*,'PASS'
end subroutine

end module
 
program main
 
use m1
implicit none

TYPE(t2),target :: obj_t1
class(t2), allocatable :: ptr
 
obj_t1%ii = 6
obj_t1%jj = 8
 
allocate (ptr, source = obj_t1)
call ext_sub(ptr)

end
