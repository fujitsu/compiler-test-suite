Module m1
interface
integer function sub()
end function
end interface

integer :: n=0
contains
subroutine ss
procedure (sub):: foo
call s1(foo)
end subroutine
subroutine s1(dmy)
procedure (sub),pointer,intent(in)::dmy 
if (.not.associated(dmy))print*,102
if (dmy()/=10)print*,103
end subroutine
end module

program main
use m1
call ss
if (n/=1) print *,101
print *,"pass"
end
integer function foo()
use m1
n=n+1
foo=10
end function
