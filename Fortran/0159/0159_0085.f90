call s1()
call s2()
print *,'pass'
end

subroutine s1()
call test01()
call test02()
call test03()
call test04()
call test01a()
call test02a()
call test03a()
call test04a()
end

subroutine s2()
call test01()
call test02()
call test03()
call test04()
call test01a()
call test02a()
call test03a()
call test04a()
end

module m0
integer ,allocatable :: a0(:)
integer ,allocatable :: a01(:)
private ::a01
equivalence (a,b)
end

module m1
use m0
integer ,allocatable :: a01(:)
integer ,allocatable :: a02(:)
integer ,pointer     :: ap0(:)
integer ,pointer     :: ap01(:)
integer ,pointer     :: ap02(:)
equivalence (aa,bb)
end
module m2
use m1,b0=>a0,b01=>a01,b02=>a02
use m1,bp0=>ap0,bp01=>ap01,bp02=>ap02
end

module m3
use m1,only:c0=>a0
use m1,only:cp0=>ap0
end
module m4
use m1,only:c01=>a01
use m1,only:cp01=>ap01
end

module mod
use m1
use m2
use m3
use m4

contains
subroutine sss()
use m1
a0=1
b01=1
a02=1
ap0=1
bp01=1
ap02=1
end subroutine
end

module mod01
use mod
integer ,allocatable :: a1(:)
contains
recursive subroutine sub1()
use m1
use m2
use m3
use m4
if (1.eq.2) call sub2()
allocate (a0(10))
allocate (a01(10))
allocate (b02(10))
allocate (ap0(10))
allocate (ap01(10))
allocate (bp02(10))
end subroutine
recursive subroutine sub2()
if (1.eq.2) call sub3()
a0=(/1,2,3,4,5,6,7,8,9,10/)
a01=(/1,2,3,4,5,6,7,8,9,10/)
b02=(/1,2,3,4,5,6,7,8,9,10/)
ap0=(/1,2,3,4,5,6,7,8,9,10/)
ap01=(/1,2,3,4,5,6,7,8,9,10/)
bp02=(/1,2,3,4,5,6,7,8,9,10/)
call sss()
end subroutine
recursive subroutine sub3()
use m1
use m2
use m3
use m4
if (1.eq.2) call sub4()
if (any(a0.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(c0.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(b0.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(b01.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(b02.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(a01.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(c01.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(a02.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(ap0.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(cp0.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(bp0.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(bp01.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(bp02.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(ap01.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(cp01.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(ap02.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
end subroutine
recursive subroutine sub4()
if (1.eq.2) call sub5()
end subroutine
recursive subroutine sub5()
use m1
use m2
use m3
use m4
if (1.eq.2) call sub1()
deallocate (a0)
deallocate (a01)
deallocate (b02)
deallocate (ap0)
deallocate (ap01)
deallocate (bp02)
end subroutine
end module

subroutine test01() 
use mod01
call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
end subroutine

subroutine test02()
use m1
use m2
use m3
use m4
use mod01
call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
end subroutine

subroutine test03()
use m1
use m4
use mod01
call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
end subroutine

subroutine test04()
use m2
use m4
use mod01
call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
end subroutine

subroutine sss()
use m1
use m2
end

module mod02
use mod
integer ,allocatable :: a1(:)
contains
recursive subroutine sub1()
use m1
use m2
use m3
use m4
if (1.eq.2) call sub2()
allocate (a0(10))
allocate (a01(10))
allocate (b02(10))
allocate (ap0(10))
allocate (ap01(10))
allocate (bp02(10))
end subroutine
recursive subroutine sub2()
if (1.eq.2) call sub3()
a0=(/1,2,3,4,5,6,7,8,9,10/)
a01=(/1,2,3,4,5,6,7,8,9,10/)
b02=(/1,2,3,4,5,6,7,8,9,10/)
ap0=(/1,2,3,4,5,6,7,8,9,10/)
ap01=(/1,2,3,4,5,6,7,8,9,10/)
bp02=(/1,2,3,4,5,6,7,8,9,10/)
call sss()
end subroutine
recursive subroutine sub3()
use m1
use m2
use m3
use m4
if (1.eq.2) call sub4()
if (any(a0.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(c0.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(b0.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(b01.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(b02.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(a01.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(c01.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(a02.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(ap0.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(cp0.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(bp0.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(bp01.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(bp02.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(ap01.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(cp01.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(ap02.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
end subroutine
recursive subroutine sub4()
if (1.eq.2) call sub5()
end subroutine
recursive subroutine sub5()
use m1
use m2
use m3
use m4
if (1.eq.2) call sub1()
deallocate (a0)
deallocate (a01)
deallocate (b02)
deallocate (ap0)
deallocate (ap01)
deallocate (bp02)
end subroutine
end module

subroutine test01a() 
use mod02
call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
end subroutine

subroutine test02a()
use m1
use m2
use m3
use m4
use mod02
call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
end subroutine

subroutine test03a()
use m1
use m4
use mod02
call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
end subroutine

subroutine test04a()
use m2
use m4
use mod02
call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
end subroutine

