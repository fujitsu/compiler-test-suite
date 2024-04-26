module m
integer ,allocatable :: q0(:)
end
module m0
use m
integer ,allocatable :: a0(:)
integer ,allocatable :: a1(:)
integer ,allocatable :: a2(:)
integer ,allocatable :: a3(:)
integer ,allocatable :: a4(:)
integer ,allocatable :: a5(:)
integer ,allocatable :: a6(:)
integer ,allocatable :: a7(:)
integer ,allocatable :: a8(:)
integer ,allocatable :: a9(:)
integer ,allocatable :: aa(:)
integer ,allocatable :: ab(:)
integer ,allocatable :: ac(:)
integer ,allocatable :: ad(:)
integer ,allocatable :: ae(:)
integer ,allocatable :: af(:)
integer ,allocatable :: ag(:)
integer ,allocatable :: ah(:)
integer ,allocatable :: ai(:)
integer ,allocatable :: aj(:)
end
module m1
use m0
end
module m2
use m1,b0=>a0,b1=>a1,q00=>q0
use m1,b2=>a2,b3=>a3,b4=>a4
use m1,b5=>a5,b6=>a6,b7=>a7
use m1,b8=>a8,b9=>a9,ba=>aa
use m1,bb=>ab,bc=>ac,bd=>ad
use m1,be=>ae,bf=>af,bg=>ag
use m1,bh=>ah,bi=>ai,bj=>aj
end
module mod1
use m2
end
use m1
allocate (aa(10))
call sub0()
call sub1()
call sub0()
call sub2()
call sub0()
call sub3()
call sub4()
print *,'pass'
end 
subroutine sub0()
use m2
end
subroutine sub1()
use m2
allocate (b0(10))
allocate (b1(10))
end subroutine
recursive subroutine sub2()
use mod1
b0=(/1,2,3,4,5,6,7,8,9,10/)
b1=(/1,2,3,4,5,6,7,8,9,10/)
ba=(/1,2,3,4,5,6,7,8,9,10/)
end subroutine
recursive subroutine sub3()
use m2
if (any(b0.ne.(/1,2,3,4,5,6,7,8,9,10/))) print *,'err'
end subroutine
recursive subroutine sub4()
use mod1
if (any(b1.ne.(/1,2,3,4,5,6,7,8,9,10/))) print *,'err'
end subroutine
recursive subroutine sub5()
use mod1
if (any(ba.ne.(/1,2,3,4,5,6,7,8,9,10/))) print *,'err'
end subroutine
