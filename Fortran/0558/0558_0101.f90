MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER(kind = 4) :: aa
  REAL(kind = 4) :: rr
END TYPE

CONTAINS
TYPE(ty) FUNCTION mfun(d1,d2,d3)
TYPE(ty) :: d1
INTEGER(kind = 4) :: d2
REAL(kind = 4) :: d3
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
INTEGER(kind = 4) :: num,a1,b1,cal
REAL(kind = 4) :: rl

obj1%aa = 2
obj1%rr = 4.0

obj2%aa = 4
obj2%rr = 5.0

num = 10
rl = 8.0
a1 = 3
b1 = 7

CALL sub(mfun)

IF(res%aa .EQ. 16 .AND. res%rr .EQ. 17.0 .AND. cal .EQ. 10) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

CONTAINS
SUBROUTINE sub(dum)
PROCEDURE(mfun) :: dum
PROCEDURE(intfun),POINTER :: ppfun
PROCEDURE(mod) :: npfun

INTERFACE gnr
  PROCEDURE dum
  PROCEDURE npfun
  PROCEDURE intfun
END INTERFACE
  
ppfun => intfun
res = gnr(obj1,obj2)

IF(res%aa .EQ. 6 .AND. res%rr .EQ. 9.0) THEN
  res = gnr(obj1,num,rl)
  cal = gnr(a1,b1)
ELSE
  PRINT*,"ERROR"
END IF

END SUBROUTINE

END PROGRAM

INTEGER FUNCTION npfun(d1,d2)
INTEGER(kind = 4) :: d1,d2
npfun = d1 + d2
END FUNCTION
