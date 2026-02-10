module m
contains
recursive function fun1(t1) result(r)
!real::fun1 
real::r    
integer::t1
 entry E1(t1) result(r)
procedure(),pointer::ptr=>E1
procedure(),pointer::ptr2=>fun1
ptr=>E1
!fun1=20
r   =20
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
module m2
use m
type ty
procedure(real),nopass,pointer::ptr2=>E1
procedure(real),nopass,pointer::ptr3=>fun1
end type
end module
use m2
type(ty)::obj
integer::count1 =1
if( obj%ptr2(count1).ne.20)print*,"101"
count1 =1
if(fun1(count1).ne.20)print*,"102",fun1(count1)
end


