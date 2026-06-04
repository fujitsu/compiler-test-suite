MODULE mod1
IMPLICIT NONE
type ty
character::ch
integer::num2
end type

INTERFACE
SUBROUTINE qsub(dd1,dd2)
import ty
  TYPE(ty),Intent(OUT) ::dd1 
  character,intent(IN) :: dd2
END SUBROUTINE
END INTERFACE

CONTAINS
SUBROUTINE psub(dd1,dd2)
  INTEGER,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2% num2 
END SUBROUTINE

INTEGER FUNCTION mfun()
INTERFACE assignment (=) 
  PROCEDURE psub,qsub
END INTERFACE

type(ty)::obj
character:: ch
ch = 'z'
obj = ch
IF(obj%ch .EQ. 'z') THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
mfun = 5
END FUNCTION
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: res
res = mfun()
print*,res
END PROGRAM

SUBROUTINE qsub(dd1,dd2)
use mod1
  TYPE(ty),Intent(OUT) ::dd1 
  character,intent(IN) :: dd2
  dd1%ch = dd2 
END SUBROUTINE
