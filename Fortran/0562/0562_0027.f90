type ty1
integer::ii
end type
type,extends(ty1)::ty2
integer::jj
end type
call s1
contains
subroutine s1
type(ty2),target::tar2(4)
tar2(2)%ii=10
call s2(tar2(2:3))
print*,"Pass"
end subroutine
subroutine s2(ptr)
type(ty2),pointer,intent(in)::ptr(:)
if (.NOT.associated(ptr))print*,"error",101
if (size(ptr)/=2 .or. ubound(ptr,1)/=2)print*,103
if (ptr(1)%ii /=10)print*,"error",102
end subroutine
end
