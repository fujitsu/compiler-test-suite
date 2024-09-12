MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: num
END TYPE

CONTAINS
FUNCTION pfun(d1,d2)
  INTEGER,intent(IN) :: d1
  type(ty),Intent(IN) ::d2 
  Integer::pfun
  pfun = d1 * d2% num 
END FUNCTION
FUNCTION qfun(dd1,dd2)
  type(ty),intent(IN) :: dd1
  INTEGER,intent(IN) :: dd2
  INTEGER::qfun
  qfun = dd1%num * dd2 * 2
END FUNCTION
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE
integer::res
res = fun(pfun)
print*,res
CONTAINS
Integer FUNCTION fun(dfun)
PROCEDURE(pfun) :: dfun

INTERFACE operator(*) 
  Module PROCEDURE qfun
  PROCEDURE dfun
  FUNCTION extfun(d1,d2)
  import ty
    real,intent(IN) :: d1
    type(ty),Intent(IN) ::d2 
    real::extfun
  END FUNCTION
END INTERFACE

type(ty)::obj
integer::num
num = 4
obj%num = 4
fun = num * obj

IF(fun .EQ. 16) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END FUNCTION

END PROGRAM

FUNCTION extfun(d1,d2)
use mod1
    real,intent(IN) :: d1
    type(ty),Intent(IN) ::d2 
    real::extfun
    extfun = d1 * d2% num 
END FUNCTION
