MODULE mod1
TYPE first
 Integer :: i1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
 
TYPE,EXTENDS(second) :: third
 Integer :: i3
END TYPE
END MODULE

PROGRAM main
use mod1
interface
  SUBROUTINE sub(A)
    use mod1
    CLASS(first),POINTER :: A
  END SUBROUTINE
end interface
 
 CLASS(first),pointer :: ptr
 call sub(ptr)
END PROGRAM

SUBROUTINE sub(A)
use mod1 
CLASS(first),POINTER :: A
TYPE(second),TARGET :: tgt
 
A => tgt
A%i1=3
SELECT TYPE(A)
 CLASS IS(third)
  A%i1=3
  A%i2=5
  A%i3=8
  PRINT*,211
 CLASS IS(first)
  A%i1=3
  PRINT*,212
 TYPE IS(first)
  A%i1=3
  PRINT*,213
 TYPE IS(second)
  A%i1=3
  A%i2=5
  if(A%i1 /=3) then 
    print*,214
  else 
    print*,'pass'
  endif
 CLASS IS(second)
  A%i1=3
  A%i2=5
  PRINT*,215
 TYPE IS(third)
  A%i1=3
  A%i2=5
  A%i3=8
  PRINT*,216
 CLASS DEFAULT
  print*,217
END SELECT

END 
