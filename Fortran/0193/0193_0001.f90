module mod
pointer(ptr,ia)
contains
subroutine sub_1()
if (ia.ne.100) print *,'err'
end subroutine
end

use mod
integer :: ib
ptr =loc(ib)
ib=100
call sub_1()
print *,'pass'
end

