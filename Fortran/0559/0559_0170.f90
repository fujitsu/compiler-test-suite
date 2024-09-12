MODULE mod1
IMPLICIT NONE

INTEGER,PARAMETER :: xx = 2
TYPE ty(k1,k2)
  INTEGER,KIND :: k1,k2
  INTEGER(KIND = k1) :: ii
  CHARACTER(LEN = k2) :: ch
  INTEGER :: arcm(2,9,10,1) = 10
END TYPE
TYPE ty2(k3,k4)
  INTEGER,KIND :: k3,k4
  INTEGER(KIND = k3) :: mm
  TYPE(ty(k3,k4)) :: cmp(2,3),aa,bb,cc
END TYPE

END MODULE 

PROGRAM main
USE  mod1
IMPLICIT NONE

TYPE(ty2(xx,15)) :: src1
TYPE(ty(xx,15)) :: m(3,3)

src1%cmp%ii = 5

m = RESHAPE(src1%cmp,(/3,3/),(/src1%aa,src1%bb,src1%cc/))
IF(m(1,1)%ii .EQ. 5 .AND. m(2,2)%ii .EQ. 5) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM
