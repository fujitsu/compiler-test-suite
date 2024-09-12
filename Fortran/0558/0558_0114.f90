MODULE mod1
IMPLICIT NONE
Integer:: res = 0
TYPE ty
  INTEGER :: num
END TYPE

CONTAINS
FUNCTION pfun()
INTEGER :: pfun
  pfun = 5
END FUNCTION
FUNCTION qfun(dd1,dd2)
  CLASS(ty) :: dd1,dd2
  CLASS(ty),ALLOCATABLE :: qfun
  ALLOCATE(ty :: qfun)
  SELECT TYPE(qfun)
    TYPE IS(ty)
      dd1%num = dd1%num * 2
      dd2%num = dd2%num * 3
      qfun%num = dd1%num + dd2%num
  END SELECT
END FUNCTION
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE
PROCEDURE(qfun),POINTER :: ppfun

INTERFACE gnr
 PROCEDURE ppfun
 MODULE PROCEDURE pfun
END INTERFACE

ppfun => qfun
res = gnr()

IF(res .EQ. 5) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

