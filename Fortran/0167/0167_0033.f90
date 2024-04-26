module m
  integer(4) :: b,c,a=10,x
  equivalence(a,x)
end

use m
if (a /= 10) print *,13
if (x /= 10) print *,132
call sub
if (a /= 11) print *,13
if (x /= 11) print *,132
if (b /= 22) print *,14
if (c /= 33) print *,15
call sub2
if (a /= 44) print *,23
if (x /= 44) print *,232
if (b /= 22) print *,24
if (c /= 33) print *,25
print *,'pass'
end

subroutine sub
  use m
  a=11
  b=22
  c=33
end

subroutine sub2
  use m
  x=44
end
