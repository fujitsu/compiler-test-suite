module m
  procedure(integer),pointer :: p
  integer(4) :: a,b,c
end

use m
integer,external :: target
p=>target
if (p(34) /= 68) print *,1
call sub
if (a /= 11) print *,3
if (b /= 22) print *,4
if (c /= 33) print *,5
print *,'pass'
end

subroutine sub
  use m
  a=11
  b=22
  c=33
end

function target(a)
  integer a,target
  target=a*2
end function

