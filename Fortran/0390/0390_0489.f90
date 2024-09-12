module m1
integer,parameter::c=3
type x
integer :: x1
integer,pointer ::a
end type
contains
function ss(a,k) &
result(r)
integer,optional::a
if (k==1) then
   if (.not.present(a)) print *,101
   a=a+1
else
   if (     present(a)) print *,102
endif
r=0
end function
function s1(p,kk,vv) &
result(r)
type (x),allocatable:: v(:)
type (x),optional:: vv
integer,pointer,optional ::p
allocate(v(2))
allocate(v(2)%a,source=c)
call= ss(v(2)%a,1)
if ((v(2)%a/=c+1)) print *,101
v(2)%a=c  
allocate(v(2)%a,source=c)
call= ss(v(2)%a,1)
if ((v(2)%a/=c+1)) print *,101
v(2)%a=c  
call= ss(  k=0)
call= ss(p,kk )
if (kk==1) then
if ((p/=c+1)) print *,201
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
type(y),allocatable::v(:)
type(x),pointer::z
allocate(v(2),z)
call= s1(v(2)%p,0,z)
call= s1(  kk=0,vv=z)
allocate(v(2)%p,source=c)
call= s1(v(2)%p,1,z)
if ((v(2)%p/=c+1)) print *,301
r=0
if (call/=0) print *,1
end function
end
use m1
call= s0()
if (call/=0) print *,1
print *,'pass'
end

