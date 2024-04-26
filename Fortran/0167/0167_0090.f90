module m
  integer(4) :: a,b,c
  private a
end

use m
call sub
if (b /= 22) print *,4
if (c /= 33) print *,5
print *,'pass'
end

subroutine sub
  use m
  b=22
  c=33
end
