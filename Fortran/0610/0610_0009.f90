MODULE mod1
TYPE first
 Integer :: i1=9
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2=8
END TYPE
 
TYPE,EXTENDS(second) :: third
 Integer :: i3=7
END TYPE

contains
function mfun()
 CLASS(first),ALLOCATABLE :: mfun
 ALLOCATE(second::mfun)
 mfun%i1=2
end function
END MODULE

PROGRAM main
use mod1 

interface
  SUBROUTINE sub()
    use mod1
  END SUBROUTINE
end interface

 call sub()
END PROGRAM

SUBROUTINE sub()
use mod1

SELECT TYPE(A=>mfun())
 TYPE IS(first)
  PRINT*,111
 CLASS IS(first)
  PRINT*,112
 TYPE IS(second)
  if(A%i1 /=2 .or. A%i2/=8) then 
    print*,212, A%i1,A%i2
  else 
    print*,'pass'
  endif
 CLASS IS(second)
  PRINT*,113
 TYPE IS(third)
  PRINT*,114
 CLASS IS(third)
  PRINT*,115
END SELECT

END 
