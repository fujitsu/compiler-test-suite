module m1
type x
  integer,allocatable::x1(:)
end type
type y
  integer,pointer   ::y1(:)
end type
contains
subroutine s(a11,a12)
type (x),allocatable::a11(:),a12(:)

a11=a12
if (.not.allocated(a11))print *,202
if (any(shape(a11)/=2))print *,203
end subroutine
end
use m1
type (x),allocatable::a11(:),a12(:)

allocate( a11(3) , a12(2))

call  s(a11,a12)

print *,'pass'
end

