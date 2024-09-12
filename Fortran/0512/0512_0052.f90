module mdef
contains
function fun2(a) result(rr)
 integer::a(:)
 integer::rr(size(a))
 rr = a(1) + 1
end function
end module

subroutine sub(f,x)
use mdef
interface
function f(a) result(rr)
 integer::a(:)
 integer::rr(size(a))
end function
end interface
type y
procedure(f),nopass,pointer::p
end type
type(y)::v
integer::x(10)
v%p=>f
x=v%p(x)
end

use mdef
integer::x(10)
x=1
call sub(fun2,x)
if ( sum(x) == 20 ) then
  print *,'pass'
else
  print *,'ng'
  print *,x
endif
end
