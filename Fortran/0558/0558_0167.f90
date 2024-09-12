Module m

CONTAINS
FUNCTION m_add(d1,d2)
  INTEGER,INTENT(IN) :: d1
  Logical,Intent(in) :: d2
  Logical :: m_add
  m_add = d2
  print*,d1
END FUNCTION
end module

PROGRAM main
use m
IMPLICIT NONE

INTERFACE OPERATOR (+)
 Module PROCEDURE m_add
END INTERFACE

INTEGER :: num1
Logical :: t,res
num1 = 2
t = .TRUE.

res = num1 + t 

IF(res) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM
