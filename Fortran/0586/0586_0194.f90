module m
contains
recursive function fun1(t1) result(r)
real::r
integer::t1
 entry E1(t1) result(r)
procedure(),pointer::ptr=>E1
procedure(),pointer::ptr2=>fun1
ptr=>E1
ptr2=>fun1
r=20
print*,"sub call"
if(t1.eq.1) then
t1 =t1 +1
if( ptr(t1).ne.20)print*,"104"
if( ptr2(t1).ne.20)print*,"105"
if( fun1(t1).ne.20)print*,"106"
end if
return
end
end module

use m
procedure(),pointer::ptr2=>E1
procedure(),pointer::ptr3=>fun1
integer::count1 =1
if( ptr2(count1).ne.20)print*,"101",ptr2(count1)
if( fun1(count1).ne.20)print*,"102",fun1(count1)
if(fun1(count1).ne.20)print*,"103",fun1(count1)
end


