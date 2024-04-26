module m
  integer(4) :: a,b,c
  equivalence(a,b,c)
end

use m
call sub
if (a /= 11) print *,1
if (b /= 11) print *,2
if (c /= 11) print *,3
b=22
if (a /= 22) print *,4
if (b /= 22) print *,5
if (c /= 22) print *,6
c=33
if (a /= 33) print *,7
if (b /= 33) print *,8
if (c /= 33) print *,9
print *,'pass'
end

subroutine sub
  use m
  a=11
end
