MODULE mod1
IMPLICIT NONE

INTEGER :: num
character(3) :: ch

INTERFACE 
  SUBROUTINE esub(dd1,dd2)
    INTEGER,intent(out) :: dd1
    character(*),intent(in) :: dd2
  END SUBROUTINE 
END INTERFACE

CONTAINS
SUBROUTINE int_sub(dum_sub)
  PROCEDURE(esub) :: dum_sub
  INTERFACE assignment(=)
    PROCEDURE dum_sub
  END INTERFACE assignment(=)
ch='hcl'
num=ch
END SUBROUTINE


END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

num = 14
CALL int_sub(esub)

END PROGRAM

SUBROUTINE esub(dd1,dd2)
  INTEGER,intent(out) :: dd1
  character(*),intent(in) :: dd2
  dd1 = len(dd2) * 2
  IF(dd1 .EQ. 6) THEN
    PRINT*,"PASS"
  ELSE
    PRINT*,"ERROR"
  END IF
END SUBROUTINE
