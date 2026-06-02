module m1
type c_ptr
 integer(4):: p1(2:2)
 integer(4):: p2(2:2)
 integer(4):: p3(2:2)
end type
contains
function p1() 
type(c_ptr),pointer::p1,p2,p3
entry p2()
entry p3()
allocate(p1)
p1%p1=1
p1%p2=2
p1%p3=3
end function
end  
use m1
call s2(p1(),p2(),p3())
print *,'pass'
contains
subroutine s2(p1,p2,p3)
use m1,only:c_ptr
type(c_ptr),value::p1,p2,p3
if (p1%p1(2)/=1)print *,'fail'
if (p1%p2(2)/=2)print *,'fail'
if (p1%p3(2)/=3)print *,'fail'
if (p2%p1(2)/=1)print *,'fail'
if (p2%p2(2)/=2)print *,'fail'
if (p2%p3(2)/=3)print *,'fail'
if (p3%p1(2)/=1)print *,'fail'
if (p3%p2(2)/=2)print *,'fail'
if (p3%p3(2)/=3)print *,'fail'
p1%p3(2)=2
p2%p3(2)=2
p3%p3(2)=2
if (p1%p3(2)/=2)print *,'fail'
if (p2%p3(2)/=2)print *,'fail'
if (p3%p3(2)/=2)print *,'fail'
end subroutine
end
