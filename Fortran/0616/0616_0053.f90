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
end subroutine
end
k=0
call w1(k)
if (k/=0)print *,101,k
print *,'pass'
end
