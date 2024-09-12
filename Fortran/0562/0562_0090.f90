
type ty
integer,pointer::ptr
end type
integer::jj
type(ty)::a1
class(ty),allocatable,target::tar
a1%ptr=>NULL()
jj=fun(tar)
allocate(tar,source=a1)
if (associated(a1%ptr))print*,"err"
call sub(tar)
if (.NOT.associated(tar%ptr) )print*,103
if (tar%ptr /= jj )print*,104
print*,"Pass"
contains
integer function fun(dmy)
class(ty),pointer,intent(in)::dmy
if(associated(dmy))print*,"Error",101
fun=10
end function
subroutine sub(d1)
class(ty),pointer,intent(in)::d1
integer,target::t1=10
if(.NOT.associated(d1))print*,"Error",102
d1%ptr => t1
end subroutine
end
