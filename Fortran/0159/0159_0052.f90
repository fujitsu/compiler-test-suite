call test01()
print *,'pass'
end
module x
integer ,allocatable :: a0(:)
end
module z
integer ,allocatable :: a1(:)
end
module x1
use x,only:a00=>a0
end
module x2
use x,only:a000=>a0
end
module z1
use z,only:a01=>a1
end
module ppp
use x
use x1
use x2
use z
use z1
end

module mod
use ppp
save
contains
subroutine sss()
a00=1
call zzz()
a01=1
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

