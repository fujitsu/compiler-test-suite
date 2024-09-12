Module mod1
TYPE first
 Integer :: i1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
End module

PROGRAM main
use mod1

INTERFACE
function Efun(d)
import first
import second
CLASS(first),POINTER :: Efun
TYPE(second),TARGET :: d
end function
END INTERFACE
 
TYPE(second) :: tgt

 
SELECT TYPE(A=>Efun(tgt))
 CLASS IS(second)

 if(A%i1/=2 .or. A%i2/=32)then
    print*,101
  else 
    print*,'pass'
  endif
END SELECT
 
END PROGRAM

function Efun(d)
use mod1
CLASS(first),POINTER :: Efun
TYPE(second),TARGET :: d
d%i2=32
Efun=>d

Efun%i1=2
end function
