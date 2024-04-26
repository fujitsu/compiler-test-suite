module m
  integer(4) :: a,b,c,x,y
  equivalence(a,x,y)
  private c
end

use m
call sub
if (x /= 11) print *,132
if (b /= 22) print *,14
call sub2
if (x /= 44) print *,232
if (b /= 22) print *,24
print *,'pass'
end

subroutine sub
  use m
  y=11
  b=22
end

subroutine sub2
  use m
  x=44
end
