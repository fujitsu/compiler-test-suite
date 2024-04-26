module m1
type y
  integer,allocatable:: x1(:)
end type
type(y),target:: w(3)
type(y),pointer::f(:)
contains
subroutine s0
f=>w(::2)
end subroutine
end
use m1
type(y),allocatable:: x(:)
call s0
allocate (x , source= f )
print *,'pass'
end



