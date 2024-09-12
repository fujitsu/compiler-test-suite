module m1
integer::n=0
interface
subroutine sub1
end subroutine
subroutine sub2
end subroutine
end interface
end module

program main
use m1
procedure(sub1),pointer::p1,p2
procedure(sub2),pointer::p3
procedure(sub1)::t1
procedure(sub2)::t2
p1=>t1
p3=>t2
call sub(p1,p2,p3,t1,t2)
contains
subroutine sub(d1,d2,d3,d4,d5)
procedure(sub1),pointer,intent(in)::d1,d2,d3,d4,d5
if (.not.associated(d1))print*,100
call d1
if (n/=1)print*,101
call d3
if (n/=11)print*,103
call d4
if (n/=12)print*,104
call d5
if (n/=22)print*,105
print*,"pass"
end subroutine
end program

subroutine t1
use m1
n=n+1
end subroutine
subroutine t2
use m1
n=n+10
end subroutine
