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

call sub1()
call sub2()
print *,'pass'
end 

subroutine sub1()
use m1
allocate (a0(1))
end subroutine

subroutine sub2()
use mod
a0=1
end subroutine
