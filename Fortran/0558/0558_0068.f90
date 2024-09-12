Module m
type ty
integer::num2
end type
end Module

PROGRAM main
use m
IMPLICIT NONE

PROCEDURE(entry_fun),POINTER :: ppfun

INTERFACE
FUNCTION qfun(dd1,dd2)
import ty
  TYPE(ty),Intent(IN) ::dd1 
  real,intent(IN) :: dd2
  real :: qfun
END FUNCTION
FUNCTION entry_fun(d1,d2)
import ty
  TYPE(ty),Intent(IN) ::d1 
  INTEGER,intent(IN) :: d2
  Integer :: entry_fun
END FUNCTION
FUNCTION pfun(dd1,dd2)
import ty
  INTEGER,intent(IN) :: dd1
  TYPE(ty),Intent(IN) ::dd2
  Integer :: pfun
END FUNCTION

END INTERFACE

INTERFACE operator(+) 
  PROCEDURE :: ppfun, pfun, qfun
END INTERFACE

type(ty)::obj
Integer::res,num
obj%num2 = 10
num = 10
ppfun => entry_fun 
res = obj + num

IF(res .EQ. 100) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

FUNCTION qfun(dd1,dd2)
use m
  TYPE(ty),Intent(IN) ::dd1 
  real,intent(IN) :: dd2
  real :: qfun
  TYPE(ty),Intent(IN) ::d1 
  INTEGER,intent(IN) :: d2
  Integer :: entry_fun
  qfun = dd1%num2 + dd2
  entry entry_fun(d1,d2)
  entry_fun = d1%num2 * d2
END FUNCTION
FUNCTION pfun(dd1,dd2)
use m
  INTEGER,intent(IN) :: dd1
  TYPE(ty),Intent(IN) ::dd2
  Integer :: pfun
  pfun = dd1 + dd2%num2 
END FUNCTION

