module mod
procedure (ifun)::f
interface gen
 procedure f
end interface
private
public::gen
contains
function ifun(j)
intent(in) :: j
ifun = j
end function
end

use ::mod 
if (gen(10)/=10) print *,10002
print *,'sngg867o : pass'
end
integer function f(j)
intent(in) :: j
f = j
end function
