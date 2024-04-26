module m
  integer(4) :: a,b=10,c
end

use m
if (b /= 10) print *,1
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
