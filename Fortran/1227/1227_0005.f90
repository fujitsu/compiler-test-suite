module m1
type x
  integer(8)::x0
  integer(8),allocatable::x1
end type
type ,extends(x)::xe
  integer(8)::xe0
  integer(8),allocatable::xe1
end type

type y
  integer(8)::y0
  class(x),allocatable::y1
end type
end
subroutine s1
use m1
class(y),allocatable::v,z
allocate(z)
allocate(xe::z%y1)
select type(q=>z%y1)
  type is(xe)
    allocate(q%x1,source=1_8)
    allocate(q%xe1,source=1_8)
end select
k=0
allocate( v , source=z)
k=0
select type(q=>z%y1)
  type is(xe)
    q%x1=-1_8
    q%xe1=-1_8
    k=1
end select
if (k/=1) print *,2020
k=0
select type(q=>v%y1)
  type is(xe)
    if (q%x1/=1_8) print *,2992
    if (q%xe1/=1_8) print *,2993
    k=1
end select
if (k/=1) print *,2120
end
call s1
print *,'sngg402t : pass'
end





  

