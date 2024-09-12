MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: num2
END TYPE

CONTAINS
SUBROUTINE psub(dd1,dd2)
  INTEGER,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2% num2 
END SUBROUTINE
SUBROUTINE qsub(dd1,dd2)
  TYPE(ty),Intent(OUT) ::dd1 
  INTEGER,intent(IN) :: dd2
  dd1%num2 = dd2 
END SUBROUTINE
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

call sub(psub)
CONTAINS
SUBROUTINE sub(dum)
PROCEDURE(psub) :: dum
PROCEDURE(qsub),POINTER :: ppfun

INTERFACE assignment(=) 
  PROCEDURE :: dum
  PROCEDURE ppfun
END INTERFACE

Integer::num
TYPE(ty) :: obj
num = 5
ppfun => qsub
obj = num

IF(obj%num2 .EQ. 5) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END SUBROUTINE
END PROGRAM

