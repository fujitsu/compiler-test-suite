module m0
contains
function   s1(a,b) result(r)
integer::a(:),b(size(a))
integer::     r(size(a))
if (any(a/=1)) print *,101
if (any(b/=1)) print *,122
r=b
end
function   s2(a,b) result(r)
integer::a(:,:),b(size(a),size(a))
integer::       r(size(a),size(a))
if (any(a/=2)) print *,102
if (any(b/=2)) print *,132
r=b
end
function   s3(a,b) result(r)
integer::a(:,:,:),b(size(a),size(a),size(a))
integer::         r(size(a),size(a),size(a))
if (any(a/=3)) print *,103
if (any(b/=3)) print *,133
r=b
end
end
module m1
use m0
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
end
subroutine s
use m1
integer,parameter::a1(2)=1,b1(*)=a1
integer,parameter::a2(2,2)=2,b2(4,4)=2
integer,parameter::a3(2,2,2)=3,b3(8,8,8)=3
integer::     r1(size(a1))
integer::         r2(size(a2),size(a2))
integer::         r3(size(a3),size(a3),size(a3))
p1=>s1
p2=>s2
p3=>s3
v%p1=>p1
v%p2=>p2
v%p3=>p3
r1=  gen(a1,b1)
if (any(r1/=b1)) print *,80001
r2=  gen(a2,b2)
if (any(r2/=b2)) print *,80002
r3=  gen(a3,b3)
if (any(r3/=b3)) print *,80003
r1=   gen2(a1,b1)
if (any(r1/=b1)) print *,80001
r2=   gen2(a2,b2)
if (any(r2/=b2)) print *,80002
r3=   gen2(a3,b3)
if (any(r3/=b3)) print *,80003
r1=   p1  (a1,b1)
if (any(r1/=b1)) print *,80001
r2=   p2  (a2,b2)
if (any(r2/=b2)) print *,80002
r3=   p3  (a3,b3)
if (any(r3/=b3)) print *,80003
r1=   s1  (a1,b1)
if (any(r1/=b1)) print *,80001
r2=   s2  (a2,b2)
if (any(r2/=b2)) print *,80002
r3=   s3  (a3,b3)
if (any(r3/=b3)) print *,80003
r1=   v%p1  (a1,b1)
if (any(r1/=b1)) print *,80001
r2=   v%p2  (a2,b2)
if (any(r2/=b2)) print *,80002
r3=   v%p3  (a3,b3)
if (any(r3/=b3)) print *,80003
end
call s
print *,'pass'
end
