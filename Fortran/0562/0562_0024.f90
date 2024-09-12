interface
subroutine sub(d1)
integer::d1
end subroutine
end interface
call sub(4)
end

subroutine sub(a1)
integer::a1
type ty
integer::ii
end type
type(ty),target::tar(8)
tar(6)%ii=a1
call sub2(tar(2),tar(4))
if (tar(2)%ii /= 2)print*,"error",103
if (tar(4)%ii /= 4)print*,"error",104
print*,"Pass"
contains
subroutine sub2(ptr1,ptr2)
type(ty),pointer,intent(in)::ptr1
type(ty),pointer,intent(in)::ptr2
if(.NOT.associated(ptr1))print*,"error",101
if(.NOT.associated(ptr2))print*,"error",102
ptr1%ii=2
ptr2%ii=4
end subroutine
end subroutine
