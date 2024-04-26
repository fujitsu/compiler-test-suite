MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: x,y
END TYPE

INTERFACE OPERATOR(.DIST.)
  MODULE PROCEDURE proc
END INTERFACE

INTERFACE OPERATOR(.MULT.)
  MODULE PROCEDURE proc2
END INTERFACE

CONTAINS

FUNCTION proc(mma,mmb)
IMPLICIT NONE
INTEGER :: proc
TYPE(t1),INTENT(IN) :: mma,mmb
proc = (mmb%y - mma%y) + (mmb%x - mma%x)
END FUNCTION

FUNCTION proc2(dd1,dd2)
IMPLICIT NONE
INTEGER :: proc2
TYPE(t1),INTENT(IN) :: dd1,dd2
proc2 = (dd2%y - dd1%y) * (dd2%x - dd2%x)
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: num
TYPE(t1) :: obj1,obj2
obj1%x = 2
obj1%y = 1
obj2%x = 3
obj2%y = 4

ASSOCIATE(aa => obj1 .DIST. obj2 , bb => obj1 .MULT. obj2 , cc => 4 * 3)
  IF(aa .GT. bb) THEN
    num = 1
  ELSE
    num = 0
  END IF
  SELECT CASE(cc)
    CASE(12)
    num = num + 1
  END SELECT
END ASSOCIATE

IF(num .EQ. 2) PRINT*,'pass'

END PROGRAM
