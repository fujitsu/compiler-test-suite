module m
  procedure(integer),pointer :: p
  integer(4) :: b,c,a,x
  equivalence(a,x)
end

use m
integer,external :: target
p=>target
if (p(34) /= 68) print *,1
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

function target(a)
  integer a,target
  target=a*2
end function
