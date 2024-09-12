subroutine s1
type ty1
integer,pointer::ptr(:)
end type
type ty2
type(ty1),pointer::obj1
end type
class(ty2),allocatable,target::t1
type(ty2)::k1
type(ty1),target::k2
integer,target::tar(4)=0
k1%obj1=>NULL()
k2%ptr=>NULL()
allocate(t1,mold=k1)
allocate(t1%obj1,source=k2)
t1%obj1%ptr=>tar
call s2(t1,t1%obj1,t1%obj1%ptr)
call s3(t1%obj1%ptr)
if (t1%obj1%ptr(1)/=0)print*,108
if (t1%obj1%ptr(2)/=2)print*,109
print*,"Pass"
contains
subroutine s2(p1,p2,p3)
class(ty2),pointer,intent(in)::p1    
type(ty1),pointer,intent(in)::p2
integer,pointer,intent(in)::p3(:)
if (.NOT.associated(p1))print*,101
if (.NOT.associated(p2))print*,102
if (.NOT.associated(p3))print*,103
end subroutine
subroutine s3(p1)
integer,pointer,intent(in)::p1(:)
if (.NOT.associated(p1))print*,104
if (size(p1)/=4)print*,105
if (ubound(p1,1)/=4)print*,106
if (p1(2)/=0)print*,107
p1(2)=2
p1(4)=4
end subroutine
end subroutine

call s1
end
