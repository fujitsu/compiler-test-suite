
print *,'pass'
end

module mod
type ty0
integer              :: a0(10)
end type
type(ty0),allocatable :: s0(:)
contains
subroutine sss()
s0(1)%a0=1
end subroutine
end
module mod01
use mod
contains
recursive subroutine sub1()
if (1.eq.2) call sub2()
allocate (s0(1))
end subroutine
recursive subroutine sub2()
if (1.eq.2) call sub3()
s0(1)%a0=(/1,2,3,4,5,6,7,8,9,10/)
call sss()
end subroutine
recursive subroutine sub3()
if (1.eq.2) call sub4()
if (any(s0(1)%a0.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
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
call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
end subroutine
