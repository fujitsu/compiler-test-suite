module m1
type::x
 integer::x1
end type
type,extends(x)::y
  integer::y1=2
end type
contains
subroutine s1
class(x),pointer,contiguous::t1(:)
class(x),pointer,contiguous::p2(:,:)
allocate(y::t1(3*2))
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

t1(11:16)=>p2
if (any(lbound(t1)/=[11])) print *,1201
if (any(ubound(t1)/=[16])) print *,120
k=0
select type(t1)
type is(y)
  k=1
  if (any(t1%y1/=2)) print *,1501
end select
if (k/=1) print *,1601
end subroutine
end
use m1
call s1()
print *,'pass'
end
