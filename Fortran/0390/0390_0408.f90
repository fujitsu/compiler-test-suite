module m1
integer,parameter::c(3)=[1,2,3]
contains
function ss(a,k) result(r)
integer,intent(in),optional::a(3)
if (k==1) then
   if (.not.present(a)) print *,101
   if (any(a/=c)) print *,20111
else
   if (     present(a)) print *,102
endif
r=0
end function
function s1(p,kk) result(r)
integer,pointer ::a(:)
integer,pointer,optional ::p(:)
allocate(a(3),source=c)
call= ss(a,1)
if (any(a/=c)) print *,101
a=c  
call= ss(  k=0)
call= ss(p,kk )
if (kk==1) then
if (any(p/=c)) print *,201
endif
r=0
if (call/=0) print *,1
end function
function s0() result(r)
integer,pointer ::p(:)=>null()
call= s1(p,0)
call= s1(null(),  kk=0)
allocate(p(3),source=c)
call= s1(p,1)
if (any(p/=c)) print *,301
r=0
if (call/=0) print *,1
end function
end
use m1
call= s0()
if (call/=0) print *,1
print *,'pass'
end

