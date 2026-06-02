type x
  integer::x1
end type
type,extends(x)::xx
  integer,allocatable::x2
end type
type y
  class(x),allocatable::y1
end type
type (xx),allocatable::a
class (x),allocatable::b

class(y),allocatable::c(:),e
type (y),allocatable::d(:),f

a=       xx(1,2)  ! nomsg
b=          a ! nomsg

if (a%x1/=1) print *,101
if (a%x2/=2) print *,102
k=0
select type(b)
 type is(xx)
  if (b%x1/=1) print *,202
  if (b%x2/=2) print *,203
  if (loc(b%x2)==loc(a%x2)) print *,204
  k=1
end select
if (k/=1) print *,205

allocate(e,source=y(x(2))) ! msg
c=[e,e]                        ! msg
  if (c(2)%y1%x1/=2) print *,202

allocate(f,source=y(x(2))) ! msg
d=[f,f]                        ! msg
  if (d(2)%y1%x1/=2) print *,203

print *,'sngg529k : pass'
end

