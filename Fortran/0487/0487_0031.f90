module mod1
contains
function ifun024(iii) result (ia)
INTEGER ia(ibits(iii,1,3)) 
ia=(/(i,i=1,7)/)
end function
end
use mod1
if (any(ifun024(14)/=(/(i,i=1,7)/) )) print *,101

print *,'pass'
end
