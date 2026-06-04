module mod
procedure (ifun)::f
interface operator(.c.)
 procedure f
end interface
private
public::operator(.c.)
contains
function ifun(j)
intent(in) :: j
ifun = j
end function
end

use ::mod 
if ((.c.10)/=10) print *,10001
print *,'sngg866o : pass'
end
integer function f(j)
intent(in) :: j
f = j
end function
