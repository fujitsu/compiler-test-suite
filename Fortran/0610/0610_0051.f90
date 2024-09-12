MODULE mod1
IMPLICIT NONE

REAL :: temp

TYPE ty1
  PROCEDURE(fun),POINTER,NOPASS :: proc_ptr=>NULL()
END TYPE

TYPE,EXTENDS(ty1) :: ty2
  INTEGER :: int1
END TYPE

INTERFACE OPERATOR(.mult.)
  MODULE PROCEDURE multip
END INTERFACE

CONTAINS

FUNCTION fun(dmy)
  REAL :: dmy
  CLASS(ty2),ALLOCATABLE :: fun
  ALLOCATE(fun)
  fun%int1 = dmy + 1
END FUNCTION

FUNCTION multip(d1,d2)
IMPLICIT NONE
CLASS(ty2),INTENT(IN) :: d1
REAL,INTENT(IN) :: d2
CLASS(ty2),ALLOCATABLE :: multip
ALLOCATE(multip)
multip%int1 = d1%int1 * d2
END FUNCTION

END MODULE 


PROGRAM main
USE mod1
IMPLICIT NONE

temp = callfun()

IF (temp .EQ. 30.00) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
ENDIF

CONTAINS

FUNCTION callfun()
  REAL :: callfun
  CLASS(ty2),DIMENSION(:),ALLOCATABLE :: obj
  ALLOCATE(obj(10))
  obj(5)%proc_ptr => fun
  SELECT TYPE(asc => obj(5)%proc_ptr(2.0) .mult. 10.00)
  TYPE IS(ty2)
  callfun = asc%int1
  END SELECT
END FUNCTION

END PROGRAM
