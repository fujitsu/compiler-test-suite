module m1
integer,parameter::c=3
contains
function ss(a,k) &
result(r)
integer,intent(out),optional::a
if (k==1) then
   if (.not.present(a)) print *,101
   a=c+1
else
   if (     present(a)) print *,102
endif
r=0
end function
function s1(p,kk) &
result(r)
integer,allocatable ::a
integer,allocatable,optional ::p
allocate(a,source=c)
call= ss(a,1)
if ((a/=c+1)) print *,101
a=c  
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
integer,allocatable ::p
call= s1(p,0)
call= s1(  kk=0)
allocate(p,source=c)
call= s1(p,1)
if ((p/=c+1)) print *,301
r=0
if (call/=0) print *,1
end function
end
use m1
call= s0()
if (call/=0) print *,1
print *,'pass'
end

