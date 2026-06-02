module mod
contains
function ifun() 
ifun=1
end function
end

use mod
procedure(ifun),pointer :: jfun => null()
integer        ,pointer :: jjjj => null()
jfun=>ifun
i=jfun()
if (i.ne.1) print *,'fail'
print *,"pass"
end

