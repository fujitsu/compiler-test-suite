call test01()
print *,'pass'
end
module mmm
integer ,allocatable :: a0(:)
end
module mod
use mmm
private a0
contains
subroutine sss()
a0=1
end subroutine
end

module mod01
use mmm
private a0
integer ,allocatable :: a1(:)
contains
recursive subroutine sub1()
if (1.eq.2) call sub2()
allocate (a0(10))
end subroutine
recursive subroutine sub2()
use mod
if (1.eq.2) call sub3()
a0=(/1,2,3,4,5,6,7,8,9,10/)
call sss()
end subroutine
recursive subroutine sub3()
if (1.eq.2) call sub4()
if (any(a0.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
end subroutine
recursive subroutine sub4()
if (1.eq.2) call sub5()
end subroutine
recursive subroutine sub5()
if (1.eq.2) call sub1()
end subroutine
end module

subroutine test01() 
use mod01
use mod02
call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
call m1sub1()
call m1sub2()
end subroutine

module mod02
use mmm
private a0
integer ,allocatable :: a1(:)
contains
recursive subroutine m1sub1()
use mod
a0=(/1,2,3,4,5,6,7,8,9,10/)
end subroutine
recursive subroutine m1sub2()
if (any(a0.ne.(/1,2,3,4,5,6,7,8,9,10/))) print *,'err'
end subroutine
end module
