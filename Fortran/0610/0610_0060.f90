MODULE mod1
IMPLICIT NONE

TYPE first
 INTEGER(KIND = 2) :: i1=1
END TYPE
 
TYPE,EXTENDS(first) :: second
 INTEGER(KIND = 2) :: i2=1
END TYPE

END MODULE

PROGRAM main
use mod1 
IMPLICIT NONE

INTERFACE
  SUBROUTINE sub()
  END SUBROUTINE
END INTERFACE
 CALL sub()
END PROGRAM

SUBROUTINE sub()
USE mod1
IMPLICIT NONE
 
INTERFACE
  FUNCTION Efun(d)
    IMPORT first
    IMPORT second
    CLASS(*),ALLOCATABLE :: Efun
    TYPE(second) :: d
  END FUNCTION
END INTERFACE

TYPE(second) :: aa

SELECT TYPE(A => Efun(aa))
 CLASS IS(second)
  IF(A%i1 /=3 .or. A%i2/=5) THEN
    PRINT*,212
  ELSE
    PRINT*,'pass'
  END IF
END SELECT

END 
 
FUNCTION Efun(d)
  USE mod1
  CLASS(*),ALLOCATABLE :: Efun
  TYPE(second) :: d
  ALLOCATE(second :: Efun) 
  d%i1=3
  d%i2=5
  SELECT TYPE(Efun)
    TYPE IS(second)
    Efun = d
  END SELECT
END FUNCTION
