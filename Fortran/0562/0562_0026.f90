module m1
type ty
integer::ii
end type
end module

program main
use m1
interface
subroutine sub(d1,d2)
import ty
integer,pointer,intent(in)::d1
type(ty),pointer,intent(in)::d2
end subroutine
end interface
integer,target::t1
type(ty),target::t2
call sub(t1,t2)
print*,"Pass"
end

subroutine sub(d1,d2)
use m1
type(ty),pointer,intent(in)::d2
integer,pointer,intent(in)::d1
call s1
contains
subroutine s1
if(.NOT.associated(d1))print*,"error",101
if(.NOT.associated(d2))print*,"error",102
end subroutine
end subroutine

