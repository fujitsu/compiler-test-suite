module m1
contains
function bb()
integer,allocatable,dimension(:)::bb
allocate(bb(1))
bb=1
end function
end
use m1
type x
  integer,allocatable,dimension(:)::x1
end type
type(x)::a,b(5)

do i=1,5
  b(i)=x(bb())
  if (any(b(i)%x1/=1))write(6,*) "NG"
end do
do i=1,5
  a=x(bb())
  if (any(a%x1/=1))write(6,*) "NG"
end do
print *,'pass'
end

