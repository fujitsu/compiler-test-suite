MODULE mod1
IMPLICIT NONE
TYPE ty
  integer :: num2
END TYPE

CONTAINS
FUNCTION mfun(dd1,dd2)
  TYPE(ty),Intent(IN) ::dd1
  INTEGER,intent(IN) :: dd2
  Integer :: mfun
  mfun = dd2 + dd1%num2 
END FUNCTION
END MODULE

MODULE mod2
USE mod1
IMPLICIT NONE

INTERFACE
FUNCTION pfun(d1)
  IMPORT ty
  TYPE(ty),Intent(IN) ::d1
  Integer :: pfun
END FUNCTION
END INTERFACE

CONTAINS
SUBROUTINE sub()
PROCEDURE(pfun) :: entry_fun

INTERFACE operator(.unary.) 
  FUNCTION extfun(d1,d2)
  import ty
     real,intent(IN) :: d1
     TYPE(ty),Intent(IN) ::d2
     real :: extfun
  END FUNCTION
  PROCEDURE :: entry_fun
  MODULE PROCEDURE mfun
END INTERFACE
Integer::res
type(ty)::obj
obj%num2 = 10
res = .unary. obj

IF(res .EQ. 20) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
 
END SUBROUTINE
END MODULE

PROGRAM main
USE mod2
IMPLICIT NONE
CALL sub()
END PROGRAM

FUNCTION extfun(dd1,dd2)
use mod2
  real,intent(IN) :: dd1
  TYPE(ty),Intent(IN) ::dd2
  real :: extfun
  extfun = dd1 + dd2%num2 
END FUNCTION

FUNCTION npfun(dd1,dd2)
use mod2
  INTEGER,intent(IN) :: dd1
  TYPE(ty),Intent(IN) ::dd2,d1
  Integer :: npfun,entry_fun
  npfun = dd1 + dd2%num2
  ENTRY entry_fun(d1)
  entry_fun = d1%num2 + d1%num2
END FUNCTION

