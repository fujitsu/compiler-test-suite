MODULE mod1
IMPLICIT NONE
type ty
integer::num2
end type

INTERFACE
SUBROUTINE qsub(dd1,dd2)
import ty
  REAL,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
END SUBROUTINE
SUBROUTINE extsub(dd1,dd2)
import ty
  Integer,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
END SUBROUTINE
END INTERFACE

CONTAINS
SUBROUTINE psub(dd1,dd2)
  TYPE(ty),Intent(OUT) ::dd1,d1 
  REAL,intent(IN) :: dd2
  Integer,intent(IN) :: d2
  dd1%num2 = dd2 
  ENTRY entry_sub(d1,d2)
  d1%num2 = (d2 *d2)/10 
END SUBROUTINE
end module
PROGRAM main
USE mod1
IMPLICIT NONE
INTEGER :: mn
PROCEDURE(qsub) :: npsub
mn = fun(entry_sub)
print*,mn

CONTAINS
FUNCTION fun(dsub)
INTEGER :: fun
PROCEDURE(entry_sub) :: dsub

INTERFACE assignment(=)
  PROCEDURE :: extsub, npsub,dsub
END INTERFACE

type(ty)::obj
Integer::num
num =  10
obj = num

IF(obj%num2 .EQ. 10) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
fun = obj%num2
END FUNCTION
END PROGRAM

SUBROUTINE npsub(dd1,dd2)
use mod1
  REAL,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2% num2 
END SUBROUTINE

SUBROUTINE extsub(dd1,dd2)
use mod1
  Integer,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2% num2 
END SUBROUTINE
