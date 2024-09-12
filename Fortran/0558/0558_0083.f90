Module m
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
end module

PROGRAM main
use m
IMPLICIT NONE

PROCEDURE(qfun) :: npfun

INTERFACE
FUNCTION qfun(dd1,dd2)
import ty
  TYPE(ty),Intent(IN) ::dd1 
  INTEGER,intent(IN) :: dd2
  Integer :: qfun
END FUNCTION
END INTERFACE

INTERFACE operator(+) 
  PROCEDURE :: npfun, pfun
END INTERFACE

type(ty)::obj
integer::res, num
num = 10
obj%num2 = 10
res = obj + num

IF(res .EQ. 20) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

FUNCTION npfun(dd1,dd2)
use m
  TYPE(ty),Intent(IN) ::dd1 
  INTEGER,intent(IN) :: dd2
  Integer :: npfun
  npfun = dd1%num2 + dd2
END FUNCTION


