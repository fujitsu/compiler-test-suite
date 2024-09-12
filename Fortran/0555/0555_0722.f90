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
    CLASS(first),POINTER :: A(:,:)
  END SUBROUTINE
end interface
 
 CLASS(first),pointer :: ptr(:,:)
 call sub(ptr)
END PROGRAM

SUBROUTINE sub(A)
use mod1 
CLASS(first),POINTER :: A(:,:)
TYPE(second),TARGET :: tgt(4,2)
 
tgt%i1=1
tgt(2,1)%i1=3
A => tgt
SELECT TYPE(A)
 CLASS IS(third)
  PRINT*,211
 CLASS IS(first)
  PRINT*,212
 TYPE IS(first)
  PRINT*,213
 TYPE IS(second)
  if(A(2,1)%i1 /=3) then 
    print*,214
  else 
    print*,'pass'
  endif
 CLASS IS(second)
  PRINT*,215
 TYPE IS(third)
  PRINT*,216
 CLASS DEFAULT
  print*,217
END SELECT

END 
