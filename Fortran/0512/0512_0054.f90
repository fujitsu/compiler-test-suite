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
type y
procedure(f),nopass,pointer::p
end type
type(y)::v
v%p=>f
x=v%p(x)
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
type y
procedure(fun2),nopass,pointer::p2
end type
type(y)::v
x=1
v%p2=>fun2
call sub(x,v%p2)
if ( sum(x) == 20 ) then
  print *,'pass'
else
  print *,'ng'
  print *,x
endif
end
