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

allocate(a,source=xx(1,2))  ! nomsg
allocate(b   ,source=a) ! nomsg

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
print *,'sngg528k : pass'
end

