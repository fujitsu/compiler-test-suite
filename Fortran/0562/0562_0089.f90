type ty
integer::ii
end type
integer::jj
class(ty),allocatable,target::tar
allocate(tar)
jj=fun(tar)
call sub(tar)
if (tar%ii/=jj)print*,103
print*,"Pass"
contains
integer function fun(dmy)
class(ty),pointer,intent(in)::dmy
if(.not.associated(dmy))print*,"Error",101
fun=10
end function
subroutine sub(d1)
class(ty),pointer,intent(in)::d1
if(.NOT.associated(d1))print*,"error",102
d1%ii=10
end subroutine
end
