Module m
TYPE ty
  INTEGER :: num2
END TYPE

contains 
FUNCTION m_mul(d1,d2)
  INTEGER,INTENT(IN) :: d1
  TYPE(ty),INTENT(IN) :: d2
  INTEGER :: m_mul
  
  INTEGER :: num1,res
  TYPE(ty) :: obj1
  Interface Operator (*)
  Procedure m_add
  end interface

  m_mul = d1 + d2%num2 + 2
  num1 = 2
  obj1%num2 = 4
  res = num1 * obj1
  IF(res .EQ. 6) THEN
    PRINT*,"PASS"
   ELSE
    PRINT*,"ERROR"
   END IF
  
END FUNCTION
FUNCTION m_add(d1,d2)
 TYPE(ty),INTENT(IN) :: d2
 INTEGER,INTENT(IN) :: d1
 INTEGER :: m_add
 m_add = d2%num2 + d1
END FUNCTION
end module

PROGRAM main
use m
IMPLICIT NONE

INTEGER :: num1,res
TYPE(ty) :: obj1
num1 = 2
obj1%num2 = 4
res =  m_mul(num1,obj1)
print*,res
END PROGRAM
