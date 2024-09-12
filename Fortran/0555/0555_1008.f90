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

TYPE(t2),target :: obj_t1
class(*), pointer :: ptr
class(*), pointer ::outptr
 
obj_t1%ii = 6
obj_t1%jj = 8

ptr=>obj_t1
 
outptr=> ext_sub(ptr)

if(sizeof(outptr)==12) print*,'PASS'
contains 
function ext_sub(ext_dmy)
class(*),pointer :: ext_dmy
type(t3),pointer :: ext_sub
allocate(ext_sub)
select type(ext_dmy)
type is(t2)
 ext_sub=t3(ext_dmy,11)
end select
end function

end
