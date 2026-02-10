module m
integer::count1
contains
recursive function fun1(t1) result(r)
real::r 
integer::t1
 entry E1(t1) result(r)
type ty
 procedure(real),pointer,nopass::ptr=>E1
 procedure(real),pointer,nopass::ptr2=>fun1
end type
type(ty)::obj
r=20
print*,"sub call"
if(t1.eq.1) then
t1 =t1 +1
if( obj%ptr(t1).ne.20)print*,"104"
if( obj%ptr2(t1).ne.20)print*,"105"
if( fun1(t1).ne.20)print*,"106"
end if
return
end
end module

use m
type ty1
  procedure(real),pointer,nopass::ptr4=>E1
  procedure(real),pointer,nopass::ptr5=>fun1
end type
type(ty1)::obj2
count1 =1
if( obj2%ptr4(count1).ne.20)print*,"101",obj2%ptr4(count1)
if( obj2%ptr5(count1).ne.20)print*,"102", obj2%ptr5(count1)
if(fun1(count1).ne.20)print*,"103",fun1(count1)
end


