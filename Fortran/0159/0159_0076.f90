call test01()
call test02()
call test03()
call test04()
print *,'pass'
end

module mod
integer ,allocatable :: a0(:)
contains
subroutine sss()
a0=1
end subroutine
end
module mod01
use mod
integer ,allocatable :: a1(:)
contains
recursive subroutine sub1()
use mod
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
use mod
if (1.eq.2) call sub4()
if (any(a0.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err'
end subroutine
recursive subroutine sub4()
use mod
call sub5()
end subroutine
recursive subroutine sub5()
use mod
call sub2()
end subroutine
end module

subroutine test01() 
use mod01
call sub1()
call sub2()
call sub3()
deallocate (a0)
end subroutine

subroutine test02()
use mod01
call sub1()
call sub5()
call sub3()
deallocate (a0)
end subroutine

subroutine test03()
use mod01
call isub()
contains
subroutine isub()
use mod
call sub1()
call sub4()
call sub3()
deallocate (a0)
end subroutine
end subroutine

subroutine test04()
use mod01
call isub()
contains
subroutine isub()
use mod
call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
deallocate (a0)
end subroutine
end subroutine
