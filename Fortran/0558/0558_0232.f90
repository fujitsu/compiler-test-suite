MODULE m1
IMPLICIT NONE
INTEGER :: num1,num2
INTERFACE
SUBROUTINE ext_sub(ad1,bd1)
INTEGER :: ad1,bd1
END SUBROUTINE
END INTERFACE
END MODULE

PROGRAM main
USE m1
IMPLICIT NONE

call sub(ext_sub)
contains
subroutine sub(dsub)
procedure(ext_sub)::dsub

INTERFACE gnr
  PROCEDURE :: dsub 
END INTERFACE
num1 = 2
num2 = 3

CALL gnr(num1,num2)

IF(num1 .EQ. 4 .AND. num2 .EQ. 9) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
end subroutine
END PROGRAM

SUBROUTINE ext_sub(dd1,dd2)
use m1
INTEGER :: dd1,dd2

dd1 = dd1 * 2
dd2 = dd2 * 3
END SUBROUTINE
