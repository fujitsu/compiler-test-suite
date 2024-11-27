module m1
type x
  integer,allocatable::x1(:)
end type
type,extends(x)::y
  integer,allocatable::x2(:)
end type
class(x),allocatable::v
contains
subroutine s1()
class(x),allocatable::w

allocate(y::w)
w%x1=[1,2]
select type(w)
 type is(y)
  w%x2=[11,12]
end select
k=0
if (any(w%x1/=[1,2])) print *,8001
select type(p=>w)
 type is(y)
  if (any(p%x2/=[11,12])) print *,8002
  k=1
end select
if (k/=1) print *,8003
end
end
use m1
call s1
print *,'pass'
end
  

