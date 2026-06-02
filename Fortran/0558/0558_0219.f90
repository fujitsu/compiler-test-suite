MODULE mod1
IMPLICIT NONE
TYPE ty
  REAL :: num2
END TYPE

INTERFACE
SUBROUTINE extsub(dd1,dd2)
import ty
  integer,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
END SUBROUTINE
END INTERFACE

CONTAINS
SUBROUTINE msub(dd1,dd2)
  REAL,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2% num2 
END SUBROUTINE
SUBROUTINE intsub(dd1,dd2)
  TYPE(ty),Intent(OUT) ::dd1 
  REAL,intent(IN) :: dd2
  dd1%num2 = dd2 
END SUBROUTINE
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

PROCEDURE(msub),POINTER :: ppsub

INTERFACE assignment (=) 
  PROCEDURE ppsub,intsub,extsub
END INTERFACE

type(ty)::obj
real::rr
obj%num2 = 5.5678
ppsub => msub

rr = obj

IF(rr .EQ. 5.5678) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

SUBROUTINE extsub(dd1,dd2)
  USE mod1
  integer,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2% num2 
END SUBROUTINE

