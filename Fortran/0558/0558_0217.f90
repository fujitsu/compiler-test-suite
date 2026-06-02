MODULE mod1
IMPLICIT NONE

TYPE ty
  REAL :: num1
END TYPE

INTERFACE
SUBROUTINE nsub(dd1,dd2)
  IMPORT ty
  TYPE(ty) :: dd1,dd2
END SUBROUTINE
SUBROUTINE extsub(d1,d2)
INTEGER :: d1
REAL :: d2
END SUBROUTINE
END INTERFACE

CONTAINS
SUBROUTINE msub(dd1,dd2)
  TYPE(ty) :: dd1,dd2
  dd1%num1 = dd1%num1 * 2.0
  dd2%num1 = dd2%num1 * 3.0
END SUBROUTINE
SUBROUTINE intsub(d1,d2)
INTEGER :: d1,d2
d1 = d1 + d2
d2 = 2
END SUBROUTINE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty) :: obj1,obj2
PROCEDURE(nsub),POINTER :: ppsub

INTERFACE gnr
  PROCEDURE ppsub
  PROCEDURE intsub
  PROCEDURE extsub
END INTERFACE

obj1%num1 = 5.0
obj2%num1 = 7.0

ppsub => msub

CALL gnr(obj1,obj2)

IF(obj1%num1 .EQ. 10.0 .AND. obj2%num1 .EQ. 21.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF


END PROGRAM

SUBROUTINE extsub(d1,d2)
INTEGER :: d1
REAL :: d2
d1 = d1 + 2
d2 = d2 + 2.0
END SUBROUTINE

SUBROUTINE nsub(dd1,dd2)
  USE mod1
  TYPE(ty) :: dd1,dd2
  dd1%num1 = dd1%num1 +  2.0
  dd2%num1 = dd2%num1 +  3.0
END SUBROUTINE
