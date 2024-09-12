module m1
type ty1
character(LEN=20)::ch(4)
end type

type ty2
real::rr(4)
end type

type ty3
type(ty1)::obj1
type(ty2)::obj2
end type

type(ty3),target,protected::tar

contains
subroutine s1
call s2(tar%obj1%ch(3),tar%obj2%rr(2:3))
if (tar%obj1%ch(3) /= "abcd")print*,106
print*,"Pass"
end subroutine

subroutine s2(ptr1,ptr2)
character(LEN=*),pointer,intent(in)::ptr1
real,pointer,intent(in)::ptr2(:)
if (.NOT.associated(ptr1))print*,101
if (.NOT.associated(ptr2))print*,102
if (LEN(ptr1) /=20)print*,103
if (size(ptr2) /= 2)print*,104
if (ubound(ptr2,1)/=2)print*,105
ptr1="abcd"
end subroutine
end module

program main
USE m1
call s1 
end
