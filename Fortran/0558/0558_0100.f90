MODULE mod1
IMPLICIT NONE

INTEGER(kind = 4) :: num1,num2,res

TYPE ty
  REAL(kind = 4) :: r1
  REAL(kind = 4) :: r2
END TYPE

CONTAINS
SUBROUTINE sub(dob,dd1,dd2)
PROCEDURE(mod),POINTER :: ppfun
PROCEDURE(dim) :: npfun
TYPE(ty) :: dob
INTEGER(kind = 4) :: dd1,dd2
REAL(kind = 4) :: lst

INTERFACE gnr
  PROCEDURE npfun
  PROCEDURE ppfun
END INTERFACE

ppfun => mod  
res = gnr(dd1,dd2)
IF(res .EQ. 0) THEN
  lst = gnr(dob%r1,dob%r2)
ELSE
  PRINT*,"ERROR"
END IF

IF(lst .EQ. 5.0) THEN
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

obj1%r1 = 3.0
obj1%r2 = 2.0

CALL sub(obj1,num1,num2)

END PROGRAM

REAL FUNCTION npfun(d1,d2)
USE mod1
REAL :: d1,d2
npfun = d1 + d2
END FUNCTION
