module mod1
TYPE first
 INTEGER :: i1=-1
END TYPE
 
TYPE,EXTENDS(first) :: second
 INTEGER :: i2=-1
END TYPE
 
TYPE,EXTENDS(second) :: third
 INTEGER :: i3=-1
END TYPE

contains
function modfun(dum)
CLASS(*),POINTER :: modfun
TYPE(second),TARGET :: dum
dum%i1=3
dum%i2=32
modfun => dum
end function
end module
 
PROGRAM main
use mod1

CLASS(second),pointer :: ptr
allocate(ptr)
call sub(ptr)
  if(ptr%i1 /=3) then 
    print*,212
    print*,ptr%i1,ptr%i2,'ff'
  else 
    print*,'pass2'
  endif

contains
SUBROUTINE sub(tgt)
TYPE(second) :: tgt
 
SELECT TYPE(A=>modfun(tgt))
 TYPE IS(first)
  PRINT*,'101'
 TYPE IS(second)
  if(A%i1/=3 .or. A%i2/=32) then
    print*,212
  else 
    print*,'pass1'
  endif
 TYPE IS(third)
  PRINT*,'102'
END SELECT

END SUBROUTINE
END PROGRAM
