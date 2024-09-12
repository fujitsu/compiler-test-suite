MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: num 
END TYPE

INTERFACE
SUBROUTINE msub(dd1,dd2)
  IMPORT ty
  TYPE(ty),intent(in) :: dd2(5)
  TYPE(ty),intent(out) :: dd1(5)
END SUBROUTINE
END INTERFACE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty) :: obj(5),o2(5)
obj%num = 14
CALL int_sub()

IF(ALL(o2(1:5)%num .EQ. 28)) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

CONTAINS
SUBROUTINE int_sub()
PROCEDURE(msub) :: prc
INTERFACE assignment(=)
  PROCEDURE :: prc
END INTERFACE assignment(=)
o2=obj
END SUBROUTINE

END PROGRAM

SUBROUTINE prc(dd1,dd2)
  USE mod1
  TYPE(ty),intent(in) :: dd2(5)
  TYPE(ty),intent(out) :: dd1(5)
  dd1%num = dd2%num * 2
END SUBROUTINE
