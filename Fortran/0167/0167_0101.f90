module m
  integer(4) :: b,a,c,x,y
  equivalence(a,x,y)
  private x
end

use m
call sub
if (a /= 11) print *,132
if (b /= 22) print *,14
if (c /= 33) print *,15
call sub2
if (a /= 44) print *,232
if (b /= 22) print *,24
if (c /= 33) print *,25
print *,'pass'
end

subroutine sub
  use m
  y=11
  b=22
  c=33
end

subroutine sub2
  use m
  a=44
end
