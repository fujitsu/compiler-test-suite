Module mod1
TYPE first
 Integer :: i1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
 
TYPE,EXTENDS(second) :: third
 Integer :: i3
END TYPE
End module

PROGRAM main
use mod1

interface
function fun(d1,d2)
import first
import second
CLASS(first),POINTER :: fun
TYPE(second),TARGET :: d1,d2
end function

function enfun(d1)
import first
import second
CLASS(first),POINTER :: enfun
TYPE(second),TARGET :: d1
end function
end interface
 
 call sub()

contains
SUBROUTINE sub()
TYPE(second),TARGET :: tgt
 
SELECT TYPE(A=>enfun(tgt))
 TYPE IS(first)
  PRINT*,101
 TYPE IS(second)
  if(A%i1 /= 3 .or. A%i2 /=5) then 
    print*,214
  else 
    print*,'pass'
  endif
 TYPE IS(third)
  PRINT*,102
END SELECT

END SUBROUTINE
END PROGRAM

function fun(d1,d2)
use mod1
CLASS(first),POINTER :: fun
CLASS(first),POINTER :: enfun
TYPE(second),TARGET :: d1,d2
fun=>d2
entry enfun(d1)
  d1%i1=3
  d1%i2=5
enfun => d1
end function
