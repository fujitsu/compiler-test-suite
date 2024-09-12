module mod
contains
function  ifun()
end function  
end
use mod
procedure(ifun),pointer :: p=>ifun
p=>ifun
print *,'pass'
end
