subroutine sub1
type ty1
integer,pointer::ptr(:)
end type
type ty2
type(ty1),pointer::obj1
end type
type ty3
type(ty2),allocatable ::alc
end type
type(ty3),target::tar1
type(ty1),target::tar2
call sub2(tar1)
tar1%alc%obj1 => tar2
call sub3(tar1)
if (.NOT.associated(tar1%alc%obj1%ptr))print*,"error",104
if (size(tar1%alc%obj1%ptr) /= 4)print*,"Error",105
print*,"Pass"
contains
subroutine sub2(d1)
type(ty3),pointer,intent(in)::d1
if (.NOT.associated(d1))print*,"error",101
allocate(d1%alc)
end subroutine
subroutine sub3(d2)
type(ty3),pointer,intent(in)::d2
integer,target::tar3(2:5)=10
if (.NOT.allocated(d2%alc))print*,"error",102
if (.NOT.associated(d2%alc%obj1))print*,"error",103
d2%alc%obj1%ptr =>tar3
end subroutine
end subroutine

call sub1
end
