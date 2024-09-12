type ty
integer::ii(4)
end type

class(ty),allocatable,target::tar
type(ty)::o1
o1%ii=0
allocate(tar,source=o1)
call sub(tar%ii)
if (tar%ii(1) /=0)print*,103
if (tar%ii(2) /=10)print*,104
if (size(o1%ii)==4)print*,"Pass"
contains
subroutine sub(ptr1)
integer,pointer,intent(in)::ptr1(:)
if (.NOT.associated(ptr1))print*,"Error",101
if (SIZE(ptr1) /= 4)print*,102
if (lbound(ptr1,1)/=1 .or. ubound(ptr1,1)/=4)print*,105
ptr1(2:3)=10
end subroutine
end
