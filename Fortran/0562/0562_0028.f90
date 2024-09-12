subroutine s1
type ty1
integer::ii
end type
type,extends(ty1)::ty2
integer::jj
end type
type,extends(ty2)::ty3
integer::kk
end type
type(ty3),target::tar
tar%ii=10
tar%jj=20
call s2(tar)
print*,"Pass"
contains
subroutine s2(ptr)
type(ty3),pointer,intent(in)::ptr
if(.NOT.associated(ptr))print*,"error",103
if (ptr%ii /= 10)print*,101
if (ptr%jj /= 20)print*,102
end subroutine
end subroutine
call s1
end
