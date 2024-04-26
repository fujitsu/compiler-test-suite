module mod
implicit none
type mytype
real :: a, b(2,4)
integer :: n,o,p
end type mytype
end module mod
subroutine zee()
use mod
implicit none
type (mytype) bee, dee
end subroutine zee
print *,'pass'
end
