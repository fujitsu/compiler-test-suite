subroutine s1
type ty
integer,allocatable::alc
end type
type(ty),target,allocatable::tar
allocate(tar)
call s3(tar)
if (.NOT.allocated(tar%alc))print*,"error",103
if (tar%alc /=12)print*,104
print*,"Pass"
contains
subroutine s3(ptr)
type(ty),pointer,intent(in) :: ptr
if (.NOT.associated(ptr))print*,"error",101
if (allocated(ptr%alc))print*,"102"
allocate(ptr%alc)
ptr%alc=12
end subroutine
end subroutine

call s1
end


