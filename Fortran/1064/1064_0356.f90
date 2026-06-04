module m1
contains
subroutine sub1
entry sub2
common /sub1/ k
common /sub2/ kk
k=1
kk=1
end subroutine
end
use m1
call sub
call sub1
call sub2
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
common /sub2/ kk
if (k/=1) print *,200
if (k1/=1) print *,201
if (kk/=1) print *,202
end
