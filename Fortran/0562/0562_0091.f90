subroutine s1
type ty1
integer,Pointer::ptr
end type

type,extends(ty1)::ty2
integer,allocatable::alc
end type
type(ty2)::obj
class(ty2),allocatable,target::tar
call s2(tar)
allocate(tar,source=obj)
call s3(tar)

if (.NOT.allocated(tar%alc))print*,103
if (tar%alc /= 10)print*,104
obj%ptr=>tar%alc
if (obj%ptr /= 10)print*,"err",104
print*,"Pass"
contains
subroutine s2(dmy)
class(ty2),pointer,intent(in)::dmy
if (associated(dmy))print*,"Error",101
end subroutine
subroutine s3(d1)
class(ty2),pointer,intent(in)::d1
if (.NOT.associated(d1))print*,102
allocate(d1%alc)
d1%alc = 10
end subroutine
end subroutine

call s1
end
