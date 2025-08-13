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
q2%q%p1(2:)=>t
q1%q%p2(2:)=>q2%q%p1
q1%q%p3(2:)=>t
q2%q%v%p1(2:)=>t
q2%q%v%p2(2:)=>q2%q%p1
if (q2%q%p1(3)/=1)k=k+8
write(31,*)lbound(q2%q%p1),ubound(q2%q%p1)
if (q1%q%p2(3)/=1)k=k+1
write(31,*)lbound(q1%q%p2),ubound(q1%q%p2)
if (q2%q%v%p1(3)/=1)k=k+2
write(31,*)lbound(q2%q%v%p1),ubound(q2%q%v%p1)
if (q2%q%v%p2(3)/=1)k=k+4
write(31,*)lbound(q2%q%v%p2),ubound(q2%q%v%p2)
if (q1%q%p3(3)/=1)k=k+16
write(31,*)lbound(q1%q%p3),ubound(q1%q%p3)
q1%q%p3(2:)=>q2%q%p1
if (q1%q%p3(3)/=1)k=k+32
write(31,*)lbound(q1%q%p3),ubound(q1%q%p3)
allocate(q2%q%v2)
q2%q%v2%p1(2:)=>t
q2%q%v2%p2(2:)=>q2%q%p1
if (q2%q%v2%p1(3)/=1)k=k+2
write(31,*)lbound(q2%q%v2%p1),ubound(q2%q%v2%p1)
if (q2%q%v2%p2(3)/=1)k=k+4
write(31,*)lbound(q2%q%v2%p2),ubound(q2%q%v2%p2)
allocate(q1%q%v3(2))
n=2
q1%q%v3(n)%p1(2:)=>t
q1%q%v3(n)%p2(2:)=>q2%q%p1
if (q1%q%v3(n)%p1(3)/=1)k=k+2
write(31,*)lbound(q1%q%v3(n)%p1),ubound(q1%q%v3(n)%p1)
if (q1%q%v3(n)%p2(3)/=1)k=k+4
write(31,*)lbound(q1%q%v3(n)%p2),ubound(q1%q%v3(n)%p2)
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
p1(2:,3:,4:)=>t
p2(2:,3:,4:)=>p1
p3(2:,3:,4:)=>t
v%p1(2:,3:,4:)=>t
v%p2(2:,3:,4:)=>p1
if (p1(3,5,7)/=1)k=k+8
write(32,*)lbound(p1),ubound(p1)
if (p2(3,5,7)/=1)k=k+1
write(32,*)lbound(p2),ubound(p2)
if (v%p1(3,5,7)/=1)k=k+2
write(32,*)lbound(v%p1),ubound(v%p1)
if (v%p2(3,5,7)/=1)k=k+4
write(32,*)lbound(v%p2),ubound(v%p2)
if (p3(3,5,7)/=1)k=k+16
write(32,*)lbound(p3),ubound(p3)
p3(2:,3:,4:)=>p1
if (p3(3,5,7)/=1)k=k+32
write(32,*)lbound(p3),ubound(p3)
allocate(v2)
v2%p1(2:,3:,4:)=>t
v2%p2(2:,3:,4:)=>p1
if (v2%p1(3,5,7)/=1)k=k+2
write(32,*)lbound(v2%p1),ubound(v2%p1)
if (v2%p2(3,5,7)/=1)k=k+4
write(32,*)lbound(v2%p2),ubound(v2%p2)
allocate(v3(2,3,4))
n=2
v3(n,3,4)%p1(2:,3:,4:)=>t
v3(n,3,4)%p2(2:,3:,4:)=>p1
if (v3(n,3,4)%p1(3,5,7)/=1)k=k+2
write(32,*)lbound(v3(n,3,4)%p1),ubound(v3(n,3,4)%p1)
if (v3(n,3,4)%p2(3,5,7)/=1)k=k+4
write(32,*)lbound(v3(n,3,4)%p2),ubound(v3(n,3,4)%p2)
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
p1(2:)=>t
p2(2:)=>p1
p3(2:)=>t
v%p1(2:)=>t
v%p2(2:)=>p1
if (p1(2)/=1)k=k+8
write(33,*)lbound(p1),ubound(p1)
if (p2(2)/=1)k=k+1
write(33,*)lbound(p2),ubound(p2)
if (v%p1(2)/=1)k=k+2
write(33,*)lbound(v%p1),ubound(v%p1)
if (v%p2(2)/=1)k=k+4
write(33,*)lbound(v%p2),ubound(v%p2)
if (p3(2)/=1)k=k+16
write(33,*)lbound(p3),ubound(p3)
p3(2:)=>p1
if (p3(2)/=1)k=k+32
write(33,*)lbound(p3),ubound(p3)
allocate(v2)
v2%p1(2:)=>t
v2%p2(2:)=>p1
if (v2%p1(2)/=1)k=k+2
write(33,*)lbound(v2%p1),ubound(v2%p1)
if (v2%p2(2)/=1)k=k+4
write(33,*)lbound(v2%p2),ubound(v2%p2)
allocate(v3(2))
n=2
v3(n)%p1(2:)=>t
v3(n)%p2(2:)=>p1
if (v3(n)%p1(2)/=1)k=k+2
write(33,*)lbound(v3(n)%p1),ubound(v3(n)%p1)
if (v3(n)%p2(2)/=1)k=k+4
write(33,*)lbound(v3(n)%p2),ubound(v3(n)%p2)
end subroutine
end
k=0
call s1(k)
call z1(k)
call w1(k)
call chk
if (k/=0)print *,101,k
print *,'pass'
end
subroutine chk
rewind  31
rewind  32
rewind  33
do
read(32,*,end=11) k1,k2,k3,k4,k5,k6
if (any((/k1,k2,k3,k4,k5,k6/)/=(/2,3,4,3,5,7/)))print *,101
end do
11 continue
do
read(31,*,end=12) k1,k2
if (any((/k1,k2/)/=(/2,3/)))print *,201
end do
12 continue
do
read(33,*,end=13) k1,k2
if (any((/k1,k2/)/=(/2,3/)))print *,301
end do
13 continue
end
