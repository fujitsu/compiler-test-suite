module m1
contains
subroutine sub1
common /sub1/ k
k=1
end subroutine
end
use m1
call sub
call sub1
call chk
print *,'pass'
contains
subroutine sub
common /sub/ k
k=1
end subroutine
end

subroutine chk
common /sub/ k
common /sub1/ k1
if (k/=1) print *,200
if (k1/=1) print *,201
end
