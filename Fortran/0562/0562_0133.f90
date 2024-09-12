module m1
interface
integer function fun()
end function
end interface
end module

program main
use m1
interface
integer function f1(d1,d2)
use m1
procedure(fun),pointer,intent(in)::d1,d2
end function
end interface
procedure(fun)::p1,p2
integer::ii
ii=f1(p1,p2)
if (ii/=10)print*,104
print*,"pass"
end program

integer function f1(dmy1,dmy2)
use m1
procedure(fun),pointer,intent(in)::dmy1,dmy2
if (.not.associated(dmy1))print*,101
if (.not.associated(dmy2))print*,102
if (dmy1()/= dmy2()-1)print*,103
f1=10
end function
integer function p1()
p1=1
end function
integer function p2()
p2=2
end function
