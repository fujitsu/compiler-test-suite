module m1
interface
integer function fun()
end function
end interface
end module

program main
use m1
procedure(fun),pointer::p1
call sub(p1)
contains
subroutine sub(dmy)
procedure(fun),pointer::dmy
integer::res
dmy=>fun
res=dmy()
if (res /=10)print*,102
end subroutine
end program

integer function fun()
real::res
intrinsic :: DIM
call ss(DIM,res)
if (res/=3.0)print*,102
print*,"pass"
fun=10
contains
subroutine ss(dd1,dd2)
procedure(DIM),pointer,intent(in)::dd1
real::dd2,n1,n2
n1=6.0
n2=3.0
if (.not.associated(dd1))print*,101
dd2 = dd1(n1,n2)
end subroutine
end function
