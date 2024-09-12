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

TYPE(t1) :: obj_t1
 
obj_t1%ii = 8
 
call ext_sub(obj_t1)

contains 
subroutine ext_sub(ext_dmy)
class(t1) :: ext_dmy
if(ext_dmy%ii==8) print*,'PaSS'
end subroutine

end
