module m
  integer(4) :: b,c,a,x,y
  equivalence(a,x,y)
  private b
end

use m
call sub
if (x /= 11) print *,132
if (c /= 33) print *,15
call sub2
if (x /= 44) print *,232
if (c /= 33) print *,25
print *,'pass'
end

subroutine sub
  use m
  y=11
  c=33
end

subroutine sub2
  use m
  x=44
end
