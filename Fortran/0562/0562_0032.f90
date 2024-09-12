program main
type ty1
integer,pointer::ptr
end type
type ty2
integer,allocatable::alc
end type
type ty3
type(ty1)::obj1
type(ty2)::obj2
end type
type(ty3),target::tar1
call sub1(tar1)
call sub2(tar1)
call sub3(tar1)
print*,"Pass"
contains
subroutine sub1(ptr)
type(ty3),pointer,intent(in)::ptr
if (.NOT.associated(ptr))print*,"error",101
allocate(ptr%obj2%alc)
end subroutine
subroutine sub2(ptr)
type(ty3),pointer,intent(in)::ptr
integer,target::tar2=3
if (.NOT.(allocated(ptr%obj2%alc)))print*,"error",102
ptr%obj2%alc = 2
ptr%obj1%ptr => tar2
end subroutine
subroutine sub3(ptr)
type(ty3),pointer,intent(in)::ptr
if (.NOT.associated(ptr))print*,"error",106
if (.NOT.(associated(ptr%obj1%ptr)))print*,"error",103
if(ptr%obj2%alc /= 2)print*,104
if(ptr%obj1%ptr /= 3)print*,105
end subroutine
end
