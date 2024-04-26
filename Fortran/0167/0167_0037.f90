module m
  integer(4) :: a
  integer(4) :: b(100),c(100)
  equivalence(a,b(20),c(40))
end

use m
if (loc(b) - loc(c) /= 4*20) print *,1
if (loc(a) - loc(b) /= 4*19) print *,2
call sub
if (a /= 33) print *,3
if (any(b(:80) /= 33)) print *,4
if (any(b(81:) /= 22)) print *,5
if (any(c /= 33)) print *,6
if (size(b) /= 100) print *,7
if (size(c) /= 100) print *,8
print *,'pass'
end

subroutine sub
  use m
  a=11
  b=22
  c=33
end
