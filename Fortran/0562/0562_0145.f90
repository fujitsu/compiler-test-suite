module m1
interface
subroutine ss(dd1,dd2)
procedure(ACOS),pointer,intent(in)::dd1
real::dd2
end subroutine
end interface
contains
subroutine sub
real ::res 
intrinsic :: ACOS
call ss(ACOS,res)
if (res/=0.99999994)print*,102,res
print*,"pass"
end subroutine
end module

program main
use m1
call sub
end

subroutine ss(dmy1,dmy2)
procedure(ACOS),pointer,intent(in)::dmy1
real :: dmy2
real::c1
c1=0.54030231
if (.not.associated(dmy1))print*,101
dmy2= dmy1(c1)
end subroutine
