module m1
type y
  integer,allocatable:: x1(:)
end type
end
use m1
type(y),allocatable:: x(:)
type(y),contiguous,pointer::f(:)
allocate(f(2))
allocate (x , source= f(:) )
print *,'pass'
end



