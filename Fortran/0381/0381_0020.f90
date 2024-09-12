module mod
contains
function   f1() 
procedure(f),pointer::f1
procedure(f),pointer::f2
entry      f2()
f1=>f
end function
function f(i)
character(i):: f
f='12'
end function
end
use mod
procedure(f),pointer::f3
f3=>f1()
if (f3(2)/='12') print *,102
print *,'pass'
end
