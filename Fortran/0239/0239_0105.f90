module m1
interface 
  function fun() result(r)
  integer,dimension(3):: r
  end function
end interface
end
subroutine s1(fun2)
use m1
procedure(fun)::fun1,fun2
procedure(fun),pointer::p1

integer :: x(3)
p1=> fun1
x= p1()
if (any(x/=[1,2,3])) print *,101

x=fun2()
if (any(x/=[4,5,6])) print *,102
end

use m1
procedure(fun)::fun2
call s1(fun2)
print *,'pass'
end

  function fun1() result(r)
  integer,dimension(3):: r
   r=[1,2,3]
  end function

  function fun2() result(r)
  integer,dimension(3):: r
   r=[4,5,6]
  end function
