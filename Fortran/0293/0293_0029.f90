subroutine w1(k)
type x
 integer::dummy
 integer,pointer::p1(:),p2(:)
end type
type xx
integer,pointer::p3(:)
type (x),pointer::v3(:)
 integer,pointer::p1(:),p2(:)
end type
type xxx
  integer dummy
  type(xx)::q
end type
type (xxx)::q1
call       s2(k,q1)
contains
subroutine s2(k,q1)
type (xxx)::q1
integer,target::t(2)=1
type zz
integer,pointer::p1(:),p2(:)
type (x)::v
type (x),pointer::v2
end type
type zzz
  integer dummy
  type(zz)::q
end type
type (zzz)::q2
q2%q%p1=>t
q1%q%p2=>q2%q%p1
q1%q%p3=>t
q2%q%v%p1=>t
q2%q%v%p2=>q2%q%p1
if (q2%q%p1(2)/=1)k=k+8
if (q1%q%p2(2)/=1)k=k+1
if (q2%q%v%p1(2)/=1)k=k+2
if (q2%q%v%p2(2)/=1)k=k+4
if (q1%q%p3(2)/=1)k=k+16
q1%q%p3=>q2%q%p1
if (q1%q%p3(2)/=1)k=k+32
allocate(q2%q%v2)
q2%q%v2%p1=>t
q2%q%v2%p2=>q2%q%p1
if (q2%q%v2%p1(2)/=1)k=k+2
if (q2%q%v2%p2(2)/=1)k=k+4
allocate(q1%q%v3(2))
n=2
q1%q%v3(n)%p1=>t
q1%q%v3(n)%p2=>q2%q%p1
if (q1%q%v3(n)%p1(2)/=1)k=k+2
if (q1%q%v3(n)%p2(2)/=1)k=k+4
end subroutine
end
subroutine z1(k)
type x
 integer::dummy
 integer,pointer::p1(:,:,:),p2(:,:,:)
end type
integer,pointer::p3(:,:,:)
type (x),pointer::v3(:,:,:)
call       s2(k,p3,v3)
contains
subroutine s2(k,p3,v3)
integer,pointer::p1(:,:,:),p2(:,:,:),p3(:,:,:)
integer,target::t(2,3,4)=1
type (x)::v
type (x),pointer::v2
type (x),pointer::v3(:,:,:)
p1=>t
p2=>p1
p3=>t
v%p1=>t
v%p2=>p1
if (p1(2,3,4)/=1)k=k+8
if (p2(2,3,4)/=1)k=k+1
if (v%p1(2,3,4)/=1)k=k+2
if (v%p2(2,3,4)/=1)k=k+4
if (p3(2,3,4)/=1)k=k+16
p3=>p1
if (p3(2,3,4)/=1)k=k+32
allocate(v2)
v2%p1=>t
v2%p2=>p1
if (v2%p1(2,3,4)/=1)k=k+2
if (v2%p2(2,3,4)/=1)k=k+4
allocate(v3(2,3,4))
n=2
v3(n,3,4)%p1=>t
v3(n,3,4)%p2=>p1
if (v3(n,3,4)%p1(2,3,4)/=1)k=k+2
if (v3(n,3,4)%p2(2,3,4)/=1)k=k+4
end subroutine
end
subroutine s1(k)
type x
 integer::dummy
 integer,pointer::p1(:),p2(:)
end type
integer,pointer::p3(:)
type (x),pointer::v3(:)
call       s2(k,p3,v3)
contains
subroutine s2(k,p3,v3)
integer,pointer::p1(:),p2(:),p3(:)
integer,target::t(2)=1
type (x)::v
type (x),pointer::v2
type (x),pointer::v3(:)
p1=>t
p2=>p1
p3=>t
v%p1=>t
v%p2=>p1
if (p1(2)/=1)k=k+8
if (p2(2)/=1)k=k+1
if (v%p1(2)/=1)k=k+2
if (v%p2(2)/=1)k=k+4
if (p3(2)/=1)k=k+16
p3=>p1
if (p3(2)/=1)k=k+32
allocate(v2)
v2%p1=>t
v2%p2=>p1
if (v2%p1(2)/=1)k=k+2
if (v2%p2(2)/=1)k=k+4
allocate(v3(2))
n=2
v3(n)%p1=>t
v3(n)%p2=>p1
if (v3(n)%p1(2)/=1)k=k+2
if (v3(n)%p2(2)/=1)k=k+4
end subroutine
end
k=0
call s1(k)
call z1(k)
call w1(k)
if (k/=0)print *,101,k
print *,'pass'
end
