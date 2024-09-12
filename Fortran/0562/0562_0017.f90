subroutine s1
type ty
integer::ii
end type
type(ty),target::obj
obj%ii=2
call s2(obj)
print*,"Pass"
contains
subroutine s2(dmy)
type(ty),pointer,intent(in)::dmy
if(.NOT.associated(dmy))print*,"error",101
if(dmy%ii /= 2)print*,102
end subroutine
end subroutine
program main
call s1
end
