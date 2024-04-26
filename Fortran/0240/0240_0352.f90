call zee()
print *,'pass'
end
module mod
implicit none
type mytype
real :: a,b(2,4)
integer :: n,o,p
end type mytype
end module mod
subroutine zee()
use mod
implicit none
type(mytype) :: bee, dee
bee%n=1
dee%n=1
if (bee%n.ne.dee%n   )print *,'err'
end subroutine zee
