module m
  integer(4) :: a,b,c(:)
  allocatable b,c
end

use m
call sub
if (a /= 11) print *,3
if (b /= 22) print *,4
if (any(c /= 33)) print *,5
if (size(c) /= 10) print *,6
print *,'pass'
end

subroutine sub
  use m
  a=11
  allocate(b)
  b=22
  allocate(c(10))
  c=33
end
