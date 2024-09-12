MODULE mod1
IMPLICIT NONE

INTEGER(kind = 4) :: num1,num2,res
INTEGER(kind = 4) :: num = 10
REAL(kind = 4) :: rl = 8.0

TYPE ty
  INTEGER(kind = 4) :: aa
  REAL(kind = 4) :: rr
END TYPE

INTERFACE
FUNCTION mfun(d1,d2,d3)
IMPORT ty
TYPE(ty) :: d1,mfun
INTEGER(kind = 4) :: d2
REAL(kind = 4) :: d3
END FUNCTION
END INTERFACE

CONTAINS
SUBROUTINE sub(dob,dd1,dd2)
TYPE(ty) :: dob,lst
INTEGER(kind = 4) :: dd1,dd2
PROCEDURE(mod),POINTER :: ppfun
PROCEDURE(mfun) :: npfun

INTERFACE gnr
  PROCEDURE npfun
  PROCEDURE ppfun
END INTERFACE

ppfun => mod  
res = gnr(dd1,dd2)
IF(res .EQ. 0) THEN
  lst = gnr(dob,num,rl)
ELSE
  PRINT*,"ERROR"
END IF

IF(lst%aa .EQ. 12 .AND. lst%rr .EQ. 12.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END SUBROUTINE
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty) :: obj1
num1 = 10
num2 = 5
obj1%aa = 2
obj1%rr = 4.0

CALL sub(obj1,num1,num2)

END PROGRAM

TYPE(ty) FUNCTION npfun(d1,d2,d3)
USE mod1
TYPE(ty) :: d1
INTEGER(kind = 4) :: d2
REAL(kind = 4) :: d3
d1%aa = d1%aa + d2
d1%rr = d1%rr + d3
npfun = d1
END FUNCTION

