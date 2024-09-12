module mod
integer ,allocatable :: a0(:)
end

module modxx
use mod,only:aa=>a0
end

module mod01
integer ,allocatable :: a1(:)
contains
recursive subroutine sub5()
contains
recursive subroutine suba()
use modxx
use mod
a0=2
end subroutine
end subroutine
end module
print *,'pass'
end
