MODULE mod1
IMPLICIT NONE

INTEGER,PARAMETER :: xx = 2
TYPE ty(k1)
  INTEGER,KIND :: k1
  INTEGER(KIND = k1) :: ii
  CHARACTER(LEN = k1) :: ch
  INTEGER :: arcm(2,9,10,1) = 10
END TYPE
TYPE ty2(k2)
  INTEGER,KIND :: k2
  INTEGER(KIND = k2) :: mm
  TYPE(ty(xx)) :: cmp(2,3)
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty2(xx)) :: src1
TYPE(ty(xx)) :: res(2,3)
TYPE(ty2(xx)) :: src2
LOGICAL :: mask(6) = [.true.,.false.,.true.,.false.,.true.,.false.],m(2,3)

src1%cmp%ii = 5
src2%cmp%ii = 10

m = RESHAPE(mask,(/2,3/))
res = MERGE(src1%cmp,src2%cmp,m)

IF(res(2,3)%ii .EQ. 10) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM
