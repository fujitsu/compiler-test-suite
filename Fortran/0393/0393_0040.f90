module m1
type::x
 integer::x1
end type
type,extends(x)::y
  integer::y1=2
end type
contains
subroutine s0(t2)
class(x),target::t2(3,2)
class(x),pointer::p2(:,:)
p2(4:,5:)=> t2
if (any(lbound(p2)/=[4,5])) print *,201
if (any(ubound(p2)/=[6,6])) print *,20
k=0
select type(p2)
type is(y)
  k=1
end select
if (k/=1) print *,601
end subroutine
subroutine s1(t1)
class(x),target::t1(6)
class(x),pointer::p2(:,:)
k=0
select type(t1)
type is(y)
  k=1
  if (any(t1%y1/=2)) print *,401
end select
if (k/=1) print *,601
p2(1:2,1:3)=> t1
if (any(lbound(p2)/=[1,1])) print *,201
if (any(ubound(p2)/=[2,3])) print *,20
k=0
select type(p2)
type is(y)
  k=1
  if (any(p2%y1/=2)) print *,501
end select
if (k/=1) print *,601
end subroutine
end
use m1
type(y),target::t1(6)
type(y),target::t2(3,2)
call s0(t2)
call s1(t1)
print *,'pass'
end
