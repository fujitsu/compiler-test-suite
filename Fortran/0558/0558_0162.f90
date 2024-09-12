module mod1
TYPE ty
  INTEGER :: num2
END TYPE
CONTAINS
FUNCTION S1(IARG,ARG)
  TYPE(ty),INTENT(IN) :: ARG
  INTEGER,INTENT(IN) :: IARG 
  INTEGER::S1
  INTEGER,INTENT(IN) :: d1
  TYPE(ty),INTENT(IN) :: d2
  INTEGER::s1_entry
  S1 =  ARG%num2 + IARG
  entry s1_entry(d1,d2)          
  s1_entry = d2%num2 + d1
END FUNCTION S1

function fun()
  integer :: fun
  INTERFACE operator (-)
    PROCEDURE s1_entry 
  END INTERFACE
  
  INTEGER :: num
  TYPE(ty) :: obj1
  obj1%num2 = 4
  num = 3
  fun  = num - obj1
  IF(fun .EQ. 7) THEN
  PRINT*,"PASS"
  ELSE
  PRINT*,"ERROR"
  END IF
  END function
end module
use mod1
Integer::res
res = fun()
print*,res
end

