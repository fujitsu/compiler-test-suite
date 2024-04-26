module m1
type y
  integer,allocatable:: x1(:)
end type
type(y),target:: w(3)
end
use m1
type(y),pointer::f(:)
type(y),allocatable:: x(:)
w=y([1])
f=>w
allocate (x , source= f )
print *,'pass'
end



