module mdef
contains
function fun2(a) result(rr)
 integer::a(:)
 integer::rr(size(a))
 rr = a(1) + 1
end function
end module

subroutine sub(x,f)
use mdef
interface
function f(a) result(rr)
 integer::a(:)
 integer::rr(size(a))
end function
end interface
integer::x(:)
procedure(f),pointer::p
p=>f
x=p(x)
end

use mdef
interface
subroutine sub(x,f)
use mdef
interface
function f(a) result(rr)
 integer::a(:)
 integer::rr(size(a))
end function
end interface
integer::x(:)
end subroutine
end interface
integer::x(10)
procedure(fun2),pointer::p2
x=1
p2=>fun2
call sub(x,p2)
if ( sum(x) == 20 ) then
  print *,'pass'
else
  print *,'ng'
  print *,x
endif
end
