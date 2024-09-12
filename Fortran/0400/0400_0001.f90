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

interface gen1
  procedure::p1  
end interface
interface gen2
  procedure::fun2
end interface

integer :: x(3)
p1=> fun1
x= gen1()
if (any(x/=[1,2,3])) print *,101

x=gen2()
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
