MODULE mod1
IMPLICIT NONE

INTEGER,PARAMETER :: xx = 2
TYPE ty(k1)
  INTEGER,KIND :: k1
  INTEGER(KIND = k1) :: ii
  CHARACTER(LEN = k1) :: ch
  INTEGER :: arcm(2,9,10,1) = 10
END TYPE
TYPE,EXTENDS(ty) ::  ty2(k2)
  INTEGER,KIND :: k2
  INTEGER(KIND = k2) :: mm
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

type(ty2(xx,xx*xx)),DIMENSION(2,3) :: src1,src2
TYPE(ty2(xx,xx*xx)) :: res(2,3)
LOGICAL :: mask(6) = [.true.,.false.,.true.,.false.,.true.,.false.],m(2,3)

src1%ii = 5
src2%ii = 10

m = RESHAPE(mask,(/2,3/))
res = MERGE(src1,src2,m)

if(res(1,1)%ii .eq. 5)then
print*,'PASS'
else
print*,'FAIL'
endif
END PROGRAM
