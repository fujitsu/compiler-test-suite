module m
  integer(4) :: a,b,c
  equivalence(a,b,c)
  allocatable x,y(:)
end

use m
call sub
if (a /= 11) print *,1
if (b /= 11) print *,2
if (c /= 11) print *,3
if (x /= 22) print *,4
if (any(y /= 33)) print *,5
if (size(y) /= 10) print *,6
b=44
if (a /= 44) print *,11
if (b /= 44) print *,21
if (c /= 44) print *,31
c=55
if (a /= 55) print *,12
if (b /= 55) print *,22
if (c /= 55) print *,32
print *,'pass'
end

subroutine sub
  use m
  allocate(x)
  allocate(y(10))
  a=11
  x=22
  y=33
end
