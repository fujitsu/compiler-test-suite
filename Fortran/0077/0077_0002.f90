module m1
type y
  integer,allocatable:: x1(:)
end type
type(y),target:: w(3)
contains
function f()
type(y),contiguous,pointer::f(:)
f=>w
end function
end
use m1
type(y),allocatable:: x(:)
allocate (x , source= f() )
print *,'pass'
end



