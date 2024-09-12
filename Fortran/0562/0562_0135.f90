module m1
interface
subroutine sub
end subroutine
end interface
integer::n=0
end module

program main
use m1
interface
integer function fun()
end function
end interface
if (fun()+n/=4)print*,101
print*,"pass"
end program

integer function fun()
use m1
procedure(sub)::ptr
interface
subroutine s1(dd)
use m1
procedure(sub),pointer,intent(in)::dd
end subroutine
end interface
call s1(ptr)
fun=2
end function

subroutine s1(dmy)
use m1
procedure(sub),pointer,intent(in)::dmy
if (.not.associated(dmy))print*,102
call dmy
end subroutine

subroutine ptr
use m1
n=n+2
end subroutine
