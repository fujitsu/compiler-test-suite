call test01()
print *,'pass'
end

module mod
integer ,allocatable :: a0(:)
contains
subroutine sss()
a0=1
end subroutine
end

module modxx
use mod,only:aa=>a0
end


module mod01
use mod
integer ,allocatable :: a1(:)
contains
recursive subroutine sub1()
allocate (a0(10))
call sub2()
end subroutine
recursive subroutine sub2()
a0=(/1,2,3,4,5,6,7,8,9,10/)
call sss()
call sub5()
call sub3()
end subroutine
recursive subroutine sub3()
use modxx
call sub4()
if (any(a0.ne.(/2,2,2,2,2,2,2,2,2,2/))) print *,'err'
end subroutine
recursive subroutine sub4()
end subroutine
recursive subroutine sub5()
call suba()
contains
recursive subroutine suba()
use modxx
aa=2
end subroutine
end subroutine
end module

subroutine test01() 
use mod01
call sub1()
call sub3()
call sub4()
call sub5()
end subroutine

