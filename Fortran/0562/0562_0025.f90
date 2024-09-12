module m1
type ty
integer::ii=1
end type
end module

subroutine sub
use m1
call s1
contains
subroutine s1
type(ty),target::t1
call s2(t1)
print*,"Pass"
end subroutine
subroutine s2(d1)
use m1
type(ty),pointer,intent(in)::d1
if (.NOT.associated(d1))print*,"error",101
if (d1%ii /= 1)print*,"error",102
end subroutine
end subroutine

call sub
end
