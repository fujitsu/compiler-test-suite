subroutine s1
type ty1
integer::ii
end type
type,extends(ty1)::ty2
real::rr(3)
end type

class(ty2),allocatable,target::tar
type(ty2)::o1
o1%rr = 0.0
o1%ii=0
allocate(tar,source=o1)
call sub(tar%ii,tar%rr(2:3))
if (tar%ii /=2)print*,103
if (tar%rr(1) /=0.0)print*,104
if (tar%rr(2) /=4.50)print*,105
print*,"Pass"
contains
subroutine sub(ptr1,ptr2)
integer,pointer,intent(in)::ptr1
real,pointer,intent(in)::ptr2(:)
if (.NOT.associated(ptr1))print*,"Error",101
if (.NOT.associated(ptr2))print*,"Error",102
if (SIZE(ptr2)/=2)print*,"Error",103
if (ubound(ptr2,1)/=2)print*,106
ptr1=2
ptr2=ptr1+2.50
end subroutine
end subroutine

call s1
end
