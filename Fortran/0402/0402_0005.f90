module m1
common /cmn/ n1,n2
contains
subroutine s1
common /cmn/ n1,n2
n1=1;n2=2
call s2
end subroutine
end
subroutine s2
use m1,k1=>n1,k2=>n2
common /cmn/ n1,n2
if (n1/=1) print *,101
if (n2/=2) print *,102
end subroutine
use m1
call s1
print *,'pass'
end
