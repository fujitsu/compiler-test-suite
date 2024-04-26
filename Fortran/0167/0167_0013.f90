module m
  integer(4) :: a
  integer(4) :: b(100),c(100)
end

use m
call sub
if (a /= 11) print *,3
if (any(b /= 22)) print *,4
if (any(c /= 33)) print *,5
if (size(b) /= 100) print *,6
if (size(c) /= 100) print *,7
print *,'pass'
end

subroutine sub
  use m
  a=11
  b=22
  c=33
end
