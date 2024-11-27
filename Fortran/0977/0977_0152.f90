module m1
contains
subroutine s(p1,p2,p3,p4)
integer,intent(in),pointer::p1
integer,intent(inout),pointer::p2
integer,intent(out),pointer::p3
integer            ,pointer::p4
if (p1/=1)write(6,*) "NG"
if (p2/=2)write(6,*) "NG"
if (p4/=4)write(6,*) "NG"
allocate(p2)
allocate(p3)
allocate(p4)
p2=12
p3=13
p4=14
end subroutine
end
use m1
integer,pointer::p1,p2,p3,p4
allocate(p1,p2,p3,p4)
p1=1
p2=2
p3=3
p4=4
call s(p1,p2,p3,p4)
if (p1/=1)write(6,*) "NG"
if (p2/=12)write(6,*) "NG"
if (p3/=13)write(6,*) "NG"
if (p4/=14)write(6,*) "NG"
print *,'pass'
end

