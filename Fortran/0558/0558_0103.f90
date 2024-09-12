MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: aa
  REAL :: rr
END TYPE

CONTAINS
TYPE(ty) FUNCTION mfun(d1,d2,d3)
TYPE(ty) :: d1
INTEGER :: d2
REAL :: d3
d1%aa = d1%aa + d2
d1%rr = d1%rr + d3
mfun = d1
END FUNCTION

TYPE(ty) FUNCTION intfun(dd1,dd2)
TYPE(ty) :: dd1,dd2
dd1%aa = dd1%aa + dd2%aa
dd1%rr = dd1%rr + dd2%rr
intfun = dd1
END FUNCTION

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty) :: obj1,obj2,res
INTEGER :: num
REAL :: rl

obj1%aa = 2
obj1%rr = 4.0

obj2%aa = 4
obj2%rr = 5.0

num = 10
rl = 8.0

CALL sub(mfun)

IF(res%aa .EQ. 16 .AND. res%rr .EQ. 17.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

CONTAINS
SUBROUTINE sub(dum)
PROCEDURE(mfun) :: dum
PROCEDURE(intfun),POINTER :: ppfun

INTERFACE gnr
  PROCEDURE dum
  PROCEDURE intfun
END INTERFACE
  
ppfun => intfun
res = gnr(obj1,obj2)

IF(res%aa .EQ. 6 .AND. res%rr .EQ. 9.0) THEN
  res = gnr(obj1,num,rl)
ELSE
  PRINT*,"ERROR"
END IF

END SUBROUTINE

END PROGRAM
