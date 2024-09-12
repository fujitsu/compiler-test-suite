module m1
integer,parameter::c(3)=[1,2,3]
contains
function ss(a,k) &
result(r)
integer,optional::a(:)
if (k==1) then
   if (.not.present(a)) print *,101
   a=a+1
else
   if (     present(a)) print *,102
endif
r=0
end function
function s1(p,kk) &
result(r)
type x
integer:: x1
integer,allocatable ::a(:)
end type
type(x)::v
integer,allocatable,optional ::p(:)
allocate(v%a(3),source=c)
call= ss(v%a,1)
if (any(v%a/=c+1)) print *,101
v%a=c  
call= ss(  k=0)
call= ss(p,kk )
if (kk==1) then
if (any(p/=c+1)) print *,201
endif
r=0
if (call/=0) print *,1
end function
function so() &
result(r)
type z
integer:: x1
integer,allocatable ::p(:)
end type
type(z)::y
call= s1(y%p,0)
call= s1(  kk=0)
allocate(y%p(3),source=c)
call= s1(y%p,1)
if (any(y%p/=c+1)) print *,301
r=0
if (call/=0) print *,1
end function
end
use m1
call= so()
if (call/=0) print *,1
print *,'pass'
end

