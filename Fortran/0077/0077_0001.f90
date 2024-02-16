module m1
type y
  integer,allocatable:: x1(:)
end type
type(y),target:: w(3)
contains
function f()
type(y),pointer::f(:)
f=>w(::2)
end function
end
subroutine s2
use m1
type(y),allocatable:: x(:)
allocate (x , mold= f() )
end
use m1
print *,'pass'
end


