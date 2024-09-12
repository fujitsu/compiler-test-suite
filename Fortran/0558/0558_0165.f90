Module m

CONTAINS
SUBROUTINE m_add(d1,d2)
  INTEGER,INTENT(OUT) :: d1
  Logical :: d2,d4
  INTEnt(in):: d2
  d1 = 2
  d4 = d2
  print*,d4
END SUBROUTINE
end module

PROGRAM main
use m
IMPLICIT NONE

INTERFACE Assignment (=)
  PROCEDURE m_add
END INTERFACE

INTEGER :: num1
Logical :: t
t = .TRUE.
num1 = t

IF(num1 .EQ. 2) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM
