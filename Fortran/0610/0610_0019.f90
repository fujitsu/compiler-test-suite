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

interface ff

function fun1(d1,d2)
 import first
 import second
 CLASS(first),POINTER :: fun1
 TYPE(second),TARGET :: d1,d2
end function

function fun2(d1)
 import first
 import second
 CLASS(first),POINTER :: fun2
 TYPE(second),TARGET :: d1
end function

end interface
 
call sub()

contains
SUBROUTINE sub()
TYPE(second),TARGET :: tgt

tgt%i1 = 3
tgt%i2 = 5
 
SELECT TYPE(A=>ff(tgt))
 TYPE IS(first)
  PRINT*,101
 CLASS IS(second)
  if(A%i1/=3 .or. A%i2 /=5) then 
    print*,214
  else 
    print*,'pass'
  endif
 TYPE IS(third)
  PRINT*,102
END SELECT

END SUBROUTINE
END PROGRAM

function fun1(d1,d2)
use mod1
CLASS(first),POINTER :: fun1
TYPE(second),TARGET :: d1,d2
fun1 => d2
print*,d1
end function

function fun2(d1)
use mod1
CLASS(first),POINTER :: fun2
TYPE(second),TARGET :: d1
fun2 => d1
end function
