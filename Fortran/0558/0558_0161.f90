MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: num2
END TYPE

INTERFACE OPERATOR ( > )
  MODULE PROCEDURE m_gt
END INTERFACE

CONTAINS
FUNCTION m_gt(d1,d2)
  INTEGER,INTENT(IN) :: d1
  TYPE(ty),INTENT(IN) :: d2
  LOGICAL :: m_gt
  m_gt = d1 > d2%num2 
END FUNCTION
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

call sub()
contains
subroutine sub()

INTEGER :: num1
TYPE(ty) :: obj1
LOGICAL :: res

num1 = 4
obj1%num2 = 2

res = num1 > obj1

IF(res) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

end subroutine 
END PROGRAM
