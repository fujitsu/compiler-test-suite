MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: nn
  REAL :: rr
  CONTAINS
  PROCEDURE,NOPASS :: gnr => sub1
END TYPE

CONTAINS
SUBROUTINE sub1(dd1,dd2)
  TYPE(ty) :: dd1,dd2
  dd1%nn = dd2%nn
  dd1%rr = dd2%rr
END SUBROUTINE
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

INTERFACE gnr
  MODULE PROCEDURE :: sub1
END INTERFACE

TYPE(ty) :: obj1,obj2

obj1%nn = 2
obj1%rr = 3.0
obj2%nn = 4
obj2%rr = 1.0

CALL obj1%gnr(obj1,obj2)

IF(obj1%nn .EQ. 4 .AND. obj1%rr .EQ. 1.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM
