module m
  integer(4) :: a,b,c
  private c
end

use m
call sub
if (a /= 11) print *,3
if (b /= 22) print *,4
print *,'pass'
end

subroutine sub
  use m
  a=11
  b=22
end
