module mdef
integer::x(10)
contains
function fun2(a) result(rr)
 integer::a(:)
 integer::rr(size(a))
 rr = a(1) + 1
end function
end module

subroutine sub(f)
use mdef
interface
function f(a) result(rr)
 integer::a(:)
 integer::rr(size(a))
end function
end interface
x=f(x)
end

use mdef
x=1
call sub(fun2)
if ( sum(x) == 20 ) then
  print *,'pass'
else
  print *,'ng'
  print *,x
endif
end
