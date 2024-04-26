module m0
integer ,allocatable :: a0(:)
integer ,allocatable :: a1(:)
end
module m1
use m0
end
module m2
use m1,b0=>a0,b1=>a1
end
module m3
use m1,only:c0=>a0
end
module m4
use m1,only:c1=>a1
end
module mod
use m1
use m2
use m3
use m4
end
use m1
call sub0()
call sub1()
call sub0()
call sub2()
call sub0()
call sub3()
call sub0()
call sub4()
call sub0()
call sub5()
call sub0()
call sub6()
call sub0()
call sub7()
print *,'pass'
end 
subroutine sub0()
use m4
end
subroutine sub1()
use m1
allocate (a0(10))
a0=1
end subroutine
recursive subroutine sub2()
use mod
c0=(/1,2,3,4,5,6,7,8,9,10/)
end subroutine
recursive subroutine sub3()
use mod
if (any(a0.ne.(/1,2,3,4,5,6,7,8,9,10/))) print *,'err'
end subroutine
recursive subroutine sub4()
use mod
if (any(b0.ne.(/1,2,3,4,5,6,7,8,9,10/))) print *,'err'
end subroutine
recursive subroutine sub5()
use mod
if (any(c0.ne.(/1,2,3,4,5,6,7,8,9,10/))) print *,'err'
end subroutine
recursive subroutine sub6()
use m2  
if (any(b0.ne.(/1,2,3,4,5,6,7,8,9,10/))) print *,'err'
end subroutine
recursive subroutine sub7()
use m3 
if (any(c0.ne.(/1,2,3,4,5,6,7,8,9,10/))) print *,'err'
end subroutine

