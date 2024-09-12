MODULE mod1

REAL :: temp

TYPE ty1
  PROCEDURE(sub),POINTER,NOPASS,PUBLIC :: proc_ptr
END TYPE

TYPE,EXTENDS(ty1) :: ty2
  INTEGER :: int1
END TYPE

CONTAINS

SUBROUTINE sub(dmy)
REAL :: dmy
dmy  = dmy + 1
END SUBROUTINE

END MODULE

PROGRAM MAIN
USE mod1
IMPLICIT NONE

REAL :: num = 2.0
CLASS(ty2),DIMENSION(:),ALLOCATABLE  :: obj
ALLOCATE(obj(10))

temp = callfun(obj)

IF (temp .EQ. 3.00) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
ENDIF

CONTAINS

FUNCTION callfun(ddy)
  REAL :: callfun
  CLASS(ty2),DIMENSION(:) :: ddy
  SELECT TYPE(asc => ddy)
  CLASS IS(ty2)
  asc(5)%proc_ptr => sub
  CALL asc(5)%proc_ptr(num)
  callfun = num
  END SELECT
END FUNCTION

END PROGRAM 
