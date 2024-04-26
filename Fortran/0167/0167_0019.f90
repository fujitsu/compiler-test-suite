module m
  integer(4) :: a(100),b,c,x,y(100)
  equivalence(a(50),x)
  equivalence(a(50),y)
end

use m
call sub 
if (loc(x) - loc(a) /= 49*4) print *,1
if (loc(y) - loc(a) /= 49*4) print *,2
if (any(a /= 11)) print *,13
if (x /= 11) print *,132
if (any(y(:51) /= 11)) print *,133
if (b /= 22) print *,14
if (c /= 33) print *,15
call sub2
if (any(a(:49) /= 11)) print *,231
if (a(50) /= 44) print *,232
if (any(a(51:) /= 11)) print *,233
if (y(1) /= 44) print *,234
if (any(y(2:51) /= 11)) print *,235
if (x /= 44) print *,236
if (b /= 22) print *,24
if (c /= 33) print *,25
call sub3
if (any(a(:49) /= 11)) print *,31
if (any(a(50:) /= 88)) print *,32
if (x /= 88) print *,33
if (any(y /= 88)) print *,34
if (b /= 22) print *,35
if (c /= 33) print *,36
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

subroutine sub3
  use m
  y=88
end
