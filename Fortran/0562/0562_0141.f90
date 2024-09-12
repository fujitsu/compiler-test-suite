module m1
interface
integer function fun()
end function
end interface
end module

program main
use m1
procedure(fun)::ptr
call sub(ptr)
print*,"pass"
contains
subroutine sub(dmy)
procedure(fun),pointer,intent(in)::dmy
if (.not.associated(dmy))print*,100
if (dmy()/=1)print*,101
end subroutine
end program

integer function ptr()
ptr=1
end function
