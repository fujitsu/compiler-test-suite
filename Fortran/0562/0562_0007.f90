type ty1
complex::cc(4)
end type
type,extends(ty1)::ty2
real::rr(3)
end type
type ty3
type(ty2)::obj
end type
interface
subroutine s1(p1,p2)
real,pointer,intent(in)::p1(:)
complex,pointer,intent(in)::p2(:)
end subroutine
end interface
type(ty3),target::tar
call s1(tar%obj%rr(1:3),tar%obj%cc(2:3))
print*,"Pass"
if (tar%obj%rr(3) /= 5.50)print*,103
end

subroutine s1(ptr1,ptr2)
real,pointer,intent(in)::ptr1(:)
complex,pointer,intent(in)::ptr2(:)
if (.NOT.associated(ptr1))print*,101
if (.NOT.associated(ptr2))print*,102
if (size(ptr1) /=3 .or. size(ptr2)/=2 )print*,104
if (ubound(ptr1,1) /= 3 .or. ubound(ptr2,1)/=2)print*,105
ptr1(3)=5.50
end subroutine
