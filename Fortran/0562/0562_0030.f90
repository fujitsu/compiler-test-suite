module m1
type ty1
integer,pointer::p1
end type
end module

subroutine sub
use m1
type,extends(ty1)::ty2
integer::jj
end type
type(ty2),target::tar(4)
tar(3)%jj = 0
tar(3)%p1 => NULL()
call sub2(tar(2:3))
if (.NOT.associated(tar(3)%p1))print*,"error",104
print*,"Pass"
contains
subroutine sub2(ptr)
type(ty2),pointer,intent(in)::ptr(:)
integer,target::t1
if(.NOT.associated(ptr))print*,"error",101
if (size(ptr)/=2 .or. ubound(ptr,1)/=2)print*,104
if (ptr(2)%jj /= 0)print*,"error",102
if(associated(ptr(2)%p1))print*,"error",103
ptr(2)%p1 =>t1
end subroutine
end subroutine

program main
use m1
call sub
end
