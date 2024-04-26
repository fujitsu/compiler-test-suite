call test01()
print *,'pass'
end

module mod
integer ,allocatable :: a0
contains
subroutine sss()
a0=1
end subroutine
subroutine aaa()
allocate (a0)
end subroutine
end
module mod01
use mod
integer ,allocatable :: a1(:)
contains
recursive subroutine sub1()
call aaa()
end subroutine
recursive subroutine sub2()
a0=2
call sss()
end subroutine
recursive subroutine sub3()
if (a0.ne.1) print *,'err'
end subroutine
end module

subroutine test01() 
use mod01
call sub1()
call sub2()
call sub3()
end subroutine

