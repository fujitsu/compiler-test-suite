module m1
type ty1
logical::c1
end type
type ty2
type(ty1)::obj
end type
contains
logical function fun(d1,d2)
type(ty2),pointer,intent(in)::d1
type(ty1),pointer,intent(in)::d2
if (.NOT.associated(d1))print*,"error",102
if (.NOT.associated(d2))print*,"error",103
if (.NOT.d2%c1)print*,"error",104
d1%obj%c1=.True.
fun= d2%c1
end function
end module

program main
use m1
type(ty2),target,allocatable::tar1
type(ty1),target::tar2
tar2%c1=.True.
call sub
contains
subroutine sub
logical ::ii
allocate(tar1)
ii=fun(tar1,tar2)
if(tar1%obj%c1 .neqv. ii)print*,101
print*,"Pass"
end subroutine
end
