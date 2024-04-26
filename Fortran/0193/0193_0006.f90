module mod
interface
module subroutine sub_1()
end subroutine
module subroutine sub_2()
end subroutine
module subroutine sub_3()
end subroutine
end interface
pointer(ptr,ia)
integer :: ib
end

submodule (mod) smod1
pointer(ptr1,ia1)
contains
module subroutine sub_1()
ptr1 =loc(ib)
if (ia1.ne.100) print *,'err'
end subroutine
end

submodule (mod:smod1) smod2
pointer(ptr1,ia1)
contains
module subroutine sub_2()
ptr1 =loc(ib)
if (ia1.ne.100) print *,'err'
ib=200
end subroutine
end

submodule (mod:smod2) smod3
pointer(ptr1,ia1)
contains
module subroutine sub_3()
ptr1 =loc(ib)
if (ia1.ne.200) print *,'err'
end subroutine
end

use mod
ptr =loc(ib)
ib=100
call sub_1()
call sub_2()
call sub_3()
print *,'pass'
end

