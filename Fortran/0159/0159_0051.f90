call test01()
print *,'pass'
end
module x
integer ,allocatable :: a0(:)
end
module mod
use x
save
integer ,allocatable :: a1(:)
contains
subroutine sss()
a0=1
call zzz()
a1=1
end subroutine
recursive subroutine aaa()
allocate (a0(10))
allocate (a1(10))
end subroutine
end

recursive subroutine sub1()
use mod
call aaa()
end subroutine
recursive subroutine sub2()
use mod
a0=(/1,2,3,4,5,6,7,8,9,10/)
a1=(/1,2,3,4,5,6,7,8,9,10/)
call sss()
end subroutine
recursive subroutine sub3()
use mod
if (any(a0.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err0'
if (any(a1.ne.(/1,1,1,1,1,1,1,1,1,1/))) print *,'err1'
end subroutine

subroutine zzz()
use mod
a1=3
end
subroutine test01() 
use mod
call sub1()
call sub2()
call sub3()
end subroutine

