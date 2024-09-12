module mod1
TYPE ty
  INTEGER :: num2
END TYPE
CONTAINS
SUBROUTINE S1(IARG,ARG)
  TYPE(ty),INTENT(OUT) :: ARG
  INTEGER,INTENT(IN) :: IARG 
  INTEGER,INTENT(OUT) :: d1
  TYPE(ty),INTENT(IN) :: d2
  ARG%num2 = IARG
  entry s1_entry(d1,d2)          
  d1 = d2%num2
END SUBROUTINE S1

function fun()
  integer :: fun
  INTERFACE assignment (=)
    PROCEDURE s1_entry 
  END INTERFACE
  
  INTEGER :: res
  TYPE(ty) :: obj1
  obj1%num2 = 4
  res = obj1
  IF(res .EQ. 4) THEN
   PRINT*,"PASS"
  ELSE
   PRINT*,"ERROR"
  END IF
  fun = 10
  END function
end module
use mod1
Integer res
res= fun() 
print*,res
end

