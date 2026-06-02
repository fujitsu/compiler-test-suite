MODULE mod1
IMPLICIT NONE
type ty
integer::num2
end type

INTERFACE
SUBROUTINE extsub(dd1,dd2)
import ty
  TYPE(ty),Intent(OUT) ::dd1 
  REAL,intent(IN) :: dd2
END SUBROUTINE
SUBROUTINE psub(dd1,dd2)
import ty
  TYPE(ty),Intent(OUT) ::dd1 
  Integer,intent(IN) :: dd2
END subroutine
END INTERFACE

CONTAINS
SUBROUTINE qsub(dd1,dd2)
  REAL,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2% num2 
END SUBROUTINE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE
INTEGER :: mn

PROCEDURE(extsub),POINTER :: ppfun

ppfun => extsub
mn = fun(qsub,psub)
print*,mn
CONTAINS
FUNCTION fun(dsub,dpsub)
INTEGER :: fun
PROCEDURE(qsub) :: dsub
PROCEDURE(psub) :: dpsub

INTERFACE assignment(=) 
  PROCEDURE :: dsub,ppfun
  PROCEDURE :: dpsub
END INTERFACE

type(ty)::obj
fun = 28
obj = fun

IF(obj%num2 .EQ. 28) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END FUNCTION

END PROGRAM

SUBROUTINE extsub(dd1,dd2)
Use mod1
  TYPE(ty),Intent(OUT) ::dd1 
  REAL,intent(IN) :: dd2
  dd1%num2 = dd2 
END SUBROUTINE

SUBROUTINE psub(dd1,dd2)
Use mod1
  TYPE(ty),Intent(OUT) ::dd1 
  Integer,intent(IN) :: dd2
  dd1%num2 = dd2 
END SUBROUTINE
