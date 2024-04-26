module m
  integer(4) :: a,b,c
end

use m
call sub
if (a /= 11) print *,3
if (b /= 22) print *,4
if (c /= 33) print *,5
print *,'pass'
end

subroutine sub
  use m
  a=11
  b=22
  c=33
end
