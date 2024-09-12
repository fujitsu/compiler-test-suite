module m1
integer,parameter::c=3
type x
integer :: x1
integer,pointer ::a
end type
contains
function ss(a,k) &
result(r)
integer,intent(in),optional::a
if (k==1) then
   if (.not.present(a)) print *,101
   if ((a/=c)) print *,4001
else
   if (     present(a)) print *,102
endif
r=0
end function
function s1(p,kk,vv) &
result(r)
type (x):: v
type (x),optional:: vv
integer,pointer,optional ::p
allocate(v%a,source=c)
call= ss(v%a,1)
if ((v%a/=c)) print *,101
v%a=c  
allocate(vv%a,source=c)
call= ss(vv%a,1)
if ((vv%a/=c)) print *,101
vv%a=c  
call= ss(  k=0)
call= ss(p,kk )
if (kk==1) then
if ((p/=c)) print *,201
endif
r=0
if (call/=0) print *,1
end function
function s0() &
result(r)
type y
integer :: x1
integer,pointer ::p=>null()
end type
type(y)::v
type(x)::z
call= s1(v%p,0,z)
call= s1(  kk=0,vv=z)
allocate(v%p,source=c)
call= s1(v%p,1,z)
if ((v%p/=c)) print *,301
r=0
if (call/=0) print *,1
end function
end
use m1
call= s0()
if (call/=0) print *,1
print *,'pass'
end

