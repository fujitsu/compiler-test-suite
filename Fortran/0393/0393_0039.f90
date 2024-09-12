module m1
type::x
 integer::x1
end type
type,extends(x)::y
  integer::y1
end type
contains
subroutine s0
type(y),target::t2(3,2)
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
subroutine s1
type(y),target::t1(6)
class(x),pointer::p2(:,:)
p2(1:2,1:3)=> t1
if (any(lbound(p2)/=[1,1])) print *,201
if (any(ubound(p2)/=[2,3])) print *,20
k=0
select type(p2)
type is(y)
  k=1
end select
if (k/=1) print *,601
end subroutine
end
use m1
call s0
call s1
print *,'pass'
end
