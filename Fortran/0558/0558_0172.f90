MODULE mod1
IMPLICIT NONE

INTEGER :: num
  character :: ch

CONTAINS
SUBROUTINE msub(dd2,dd1)
  INTEGER,intent(in) :: dd1
  character,intent(out) :: dd2
  dd2='n'
  if(dd1==14) then
   dd2 = 'y'
  end if
END SUBROUTINE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

num = 14
CALL int_sub(msub)

IF(ch .EQ. 'y') THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

CONTAINS

SUBROUTINE int_sub(dum_sub)
  PROCEDURE(msub) :: dum_sub
  INTERFACE assignment(=) 
    PROCEDURE dum_sub
  END INTERFACE assignment(=)
 ch=num
END SUBROUTINE

END PROGRAM
