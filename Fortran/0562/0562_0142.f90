module m1
interface
subroutine sub()
end subroutine
end interface
contains
integer function fun(dmy)
procedure(sub),pointer,intent(in)::dmy
if (.not.associated(dmy))print*,101
call dmy
fun=10
end function
end module

program main
use m1
procedure(sub)::ptr
if (fun(ptr)/=10)print*,101
print*,"pass"
end program

subroutine ptr
end subroutine
