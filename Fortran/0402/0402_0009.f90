module m1
common /cmn/ n1
end
subroutine s1
use m1
save      /cmn/ 
common /cmn/ k1
if (n1/=1) print *,101
if (k1/=1) print *,111
end subroutine
use m1
n1=1
call s1
print *,'pass'
end
