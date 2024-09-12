module m
TYPE first
 Integer :: i1
END TYPE

TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
end module

subroutine sub(A)

use m
CLASS(*) :: A

SELECT TYPE(A) 
 TYPE IS (first)
  PRINT*,A%i1
 TYPE IS (second)
  A%i1=1
  A%i2=5
  PRINT*,A%i1,A%i2,'PASS'
 CLASS DEFAULT
  PRINT*,'wrong choice'
END SELECT
end subroutine

use m
interface
subroutine sub(A)
use m

CLASS(*) :: A
end subroutine
end interface

TYPE(second) :: act
call sub(act)
END PROGRAM
