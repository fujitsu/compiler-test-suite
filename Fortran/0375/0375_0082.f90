module mod
integer,parameter :: kind1 = B"01"
integer,parameter :: kind2 = B"10"
integer,parameter :: kind4 = B"100"
integer,parameter :: kind8 = B"1000"
type str
  real(kind=kind4) :: r4(10)
  real(kind=kind8) :: r8(10)
end type
end module

use mod
type(str) :: sss 
sss = str(REAL(Z"7ffffff",kind4),REAL(Z"7ffffffffffffff",kind8))

write(1,*)sss%r4
write(1,*)sss%r8
print *,'pass'
end
