module m1
 procedure(s1),pointer::p1
 procedure(s2),pointer::p2
 procedure(s3),pointer::p3
interface gen
 procedure:: p1,p2,p3
end interface
interface gen2
 procedure:: s1,s2,s3
end interface
type x
procedure(s1),nopass,pointer::p1
procedure(s2),nopass,pointer::p2
procedure(s3),nopass,pointer::p3
end type
type(x)::v
contains
subroutine s1(a,b)
integer::a(:),b(size(a,1))
if (any(a/=1)) print *,101
if (any(b/=1)) print *,122
end
subroutine s2(a,b)
integer::a(:,:),b(size(a,1),size(a,2))
if (any(a/=2)) print *,102
if (any(b/=2)) print *,132
end
subroutine s3(a,b)
integer::a(:,:,:),b(size(a,1),size(a,2),size(a,3))
if (any(a/=3)) print *,103
if (any(b/=3)) print *,133
end
end
subroutine s
use m1
integer,parameter::a1(1)=1,b1(*)=a1
integer,parameter::a2(2,2)=2,b2(*,*)=a2
integer,parameter::a3(3,3,3)=3,b3(*,*,*)=a3
p1=>s1
p2=>s2
p3=>s3
v%p1=>p1
v%p2=>p2
v%p3=>p3
call gen(a1,b1)
call gen(a2,b2)
call gen(a3,b3)
call gen2(a1,b1)
call gen2(a2,b2)
call gen2(a3,b3)
call p1  (a1,b1)
call p2  (a2,b2)
call p3  (a3,b3)
call s1  (a1,b1)
call s2  (a2,b2)
call s3  (a3,b3)
call v%p1  (a1,b1)
call v%p2  (a2,b2)
call v%p3  (a3,b3)
end
call s
print *,'pass'
end
