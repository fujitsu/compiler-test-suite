call test01()
call test02()
print *,'pass'
end

module m1
integer ,allocatable :: a0(:)
integer ,allocatable :: a01(:)
integer ,allocatable :: a02(:)
end
module m2
use m1,b0=>a0,b01=>a01,b02=>a02
end

module m3
use m1,only:c0=>a0
end
module m4
use m1,only:c01=>a01
end

module mod
use m1
use m2
use m3
use m4

contains
subroutine sss()
a0=1
b01=1
a02=1
end subroutine
end

module mod01
use mod
use m1
use m2
use m3
use m4
integer ,allocatable :: a1(:)
contains
recursive subroutine sub1()
if (1.eq.2) call sub2()
allocate (a0(10))
allocate (a01(10))
allocate (b02(10))
end subroutine
recursive subroutine sub2()
if (1.eq.2) call sub3()
a0=(/1,2,3,4,5,6,7,8,9,10/)
a01=(/1,2,3,4,5,6,7,8,9,10/)
b02=(/1,2,3,4,5,6,7,8,9,10/)
call sss()
end subroutine
recursive subroutine sub3()
if (1.eq.2) call sub4()
if (any(a0.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(c0.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(b0.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(b01.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(b02.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(a01.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(c01.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
if (any(a02.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
end subroutine
recursive subroutine sub4()
if (1.eq.2) call sub5()
end subroutine
recursive subroutine sub5()
if (1.eq.2) call sub1()
deallocate (a0)
deallocate (a01)
deallocate (b02)
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
