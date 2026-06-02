module mod
pointer(ptr_1,ia_1)
pointer(ptr_2,ia_2)
pointer(ptr_3,ia_3)
pointer(ptr_4,ia_4)
pointer(ptr_5,ia_5)
end

use mod
integer :: ib_1,ib_2
ptr_1 =loc(ib_1)
ptr_2 =loc(ib_1)
ptr_3 =loc(ib_2)
ptr_4 =loc(ib_2)
ptr_5 =loc(ib_2)
ib_1=100
ib_2=200
if (ia_1.ne.100) print *,'err'
if (ia_2.ne.100) print *,'err'
if (ia_3.ne.200) print *,'err'
if (ia_4.ne.200) print *,'err'
if (ia_5.ne.200) print *,'err'
call sub_1()
print *,'pass'
contains
subroutine sub_1()
use mod
if (ia_1.ne.100) print *,'err'
if (ia_2.ne.100) print *,'err'
if (ia_3.ne.200) print *,'err'
if (ia_4.ne.200) print *,'err'
if (ia_5.ne.200) print *,'err'
ia_2=300
call sub_2()
end subroutine
subroutine sub_2()
interface
subroutineSUBBB()
use mod
interface
subroutineSUBBA(iaaa)
use mod
use mod,only :
use mod,only:ia_1
use mod,only:ia_2
integer iaaa(1,ptr_5)
end subroutine
end interface
end subroutine
end interface
if (ia_1.ne.300) print *,'err'
if (ia_2.ne.300) print *,'err'
if (ia_3.ne.200) print *,'err'
if (ia_4.ne.200) print *,'err'
if (ia_5.ne.200) print *,'err'
end subroutine
end

