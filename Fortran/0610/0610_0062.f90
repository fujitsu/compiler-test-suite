MODULE modul
IMPLICIT NONE

TYPE first
 INTEGER :: i1
END TYPE
 
TYPE,EXTENDS(first) :: second
 INTEGER :: i2
END TYPE
END MODULE
 
USE modul

INTERFACE
  SUBROUTINE sub(Adum)
    USE modul
    CLASS(*) :: Adum(:)
  END SUBROUTINE
END INTERFACE

TYPE(second) :: act(7)
CALL sub(act)
END PROGRAM

subroutine sub(Adum)
use modul
CLASS(*) :: Adum(:)

SELECT TYPE(A=>Adum(2:5))
 CLASS DEFAULT
   print*,'pass'
END SELECT

END SUBROUTINE
