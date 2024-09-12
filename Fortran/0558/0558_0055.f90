MODULE mod1
IMPLICIT NONE
type ty
integer::num2
end type

CONTAINS
FUNCTION pfun(dd1,dd2)
  INTEGER,intent(IN) :: dd1
  TYPE(ty),Intent(IN) ::dd2
  Integer :: pfun
  pfun = dd1 + dd2%num2 
END FUNCTION

FUNCTION qfun(dd1)
  TYPE(ty),Intent(IN) ::dd1 
  Integer :: qfun
  qfun = dd1%num2
END FUNCTION
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE
INTEGER :: res
res = mfun(qfun)
print*,res

CONTAINS
INTEGER FUNCTION mfun(dfun)
PROCEDURE(qfun) :: dfun

INTERFACE operator(-) 
  MODULE PROCEDURE pfun
  PROCEDURE dfun
END INTERFACE

type(ty)::obj
obj%num2 = 1234
mfun = - obj

IF(mfun .EQ. 1234) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END FUNCTION
END PROGRAM

