call test01()
print *,'pass'
end

module mod
integer ,allocatable :: a0(:)
contains
subroutine sss()
a0=1
end subroutine
recursive subroutine aaa()
allocate (a0(10))
end subroutine
end

recursive subroutine sub1()
use mod
call aaa()
end subroutine
recursive subroutine sub2()
use mod
a0=(/1,2,3,4,5,6,7,8,9,10/)
call sss()
end subroutine
recursive subroutine sub3()
use mod
if (any(a0.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
end subroutine

subroutine test01() 
use mod
call sub1()
call sub2()
call sub3()
end subroutine

