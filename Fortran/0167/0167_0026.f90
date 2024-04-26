module m
  integer(4) :: b,a,c(:),x
  equivalence(a,x)
  allocatable b,c
end

use m
call sub
if (a /= 11) print *,13
if (x /= 11) print *,132
if (b /= 22) print *,14
if (any(c /= 33)) print *,15
call sub2
if (a /= 44) print *,23
if (x /= 44) print *,232
if (b /= 22) print *,24
if (any(c /= 33)) print *,25
print *,'pass'
end

subroutine sub
  use m
  allocate(b)
  allocate(c(10))
  a=11
  b=22
  c=33
end

subroutine sub2
  use m
  x=44
end
