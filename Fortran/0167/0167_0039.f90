module m
  integer(4) :: a,b=10,c
  equivalence(a,b,c)
end

use m
if (a /= 10) print *,11
if (b /= 10) print *,12
if (c /= 10) print *,13
call sub
if (a /= 22) print *,21
if (b /= 22) print *,22
if (c /= 22) print *,23
c=33
if (a /= 33) print *,31
if (b /= 33) print *,32
if (c /= 33) print *,33
print *,'pass'
end

subroutine sub
  use m
  b=22
end
