MODULE mod1
IMPLICIT NONE
INTEGER :: num1,num2

INTERFACE gnr
  function foo()
  integer::foo
  end function 
  MODULE PROCEDURE psub
END INTERFACE

CONTAINS
SUBROUTINE psub(dd1)
  INTEGER :: dd1
  dd1 = dd1 * 5
END SUBROUTINE

END MODULE
END PROGRAM

