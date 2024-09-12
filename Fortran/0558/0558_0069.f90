MODULE mod1
IMPLICIT NONE
type ty
integer::num2
end type

CONTAINS
FUNCTION mfun(dd1,dd2)
  TYPE(ty),Intent(IN) ::dd1 
  INTEGER,intent(IN) :: dd2
  Integer :: mfun
  mfun = dd1%num2 + dd2
END FUNCTION
END MODULE

MODULE mod2
USE mod1
IMPLICIT NONE

INTERFACE
FUNCTION extfun(d1,d2)
import ty
  real,intent(IN) :: d1
  TYPE(ty),Intent(IN) ::d2
  Integer :: extfun
END FUNCTION
END INTERFACE

CONTAINS
FUNCTION nfun(dd1,dd2)
  INTEGER,intent(IN) :: dd1
  TYPE(ty),Intent(IN) ::dd2
  Integer :: nfun
  nfun = dd1 + dd2%num2 
END FUNCTION
END MODULE

PROGRAM main
USE mod2
IMPLICIT NONE
INTEGER :: mn

mn = fun(nfun)
print*,mn

CONTAINS
Integer FUNCTION fun(dfun)
PROCEDURE(nfun) :: dfun
PROCEDURE(mfun),POINTER :: ppfun
PROCEDURE(extfun) :: npfun

INTERFACE operator(/)
  PROCEDURE :: dfun, ppfun
  PROCEDURE :: npfun
END INTERFACE

type(ty)::obj
Integer::num
ppfun => mfun
obj%num2 = 10
num = 10
fun = obj / num

IF(fun .EQ. 20) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END FUNCTION
END PROGRAM

FUNCTION npfun(d1,d2)
use mod2
  real,intent(IN) :: d1
  TYPE(ty),Intent(IN) ::d2
  Integer :: npfun 
  npfun = d1 + d2%num2
END FUNCTION
