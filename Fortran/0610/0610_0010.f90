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
  SUBROUTINE sub(Arr)
    use mod1
    CLASS(first),POINTER :: Arr(:)
  END SUBROUTINE
end interface
 
 CLASS(first),pointer :: ptr(:)
 call sub(ptr)
END PROGRAM

SUBROUTINE sub(Arr)
use mod1 
CLASS(first),POINTER :: Arr(:)
TYPE(second),TARGET :: tgt(2:18)

tgt%i1=0
tgt%i2=66

tgt(3)%i1=54
tgt(3:10)%i2=55
 
Arr => tgt
Arr%i1=3

SELECT TYPE(A=>Arr(3:))
 CLASS IS(third)
  PRINT*,211
 CLASS IS(first)
  PRINT*,212
 TYPE IS(first)
  PRINT*,213
 TYPE IS(second)
  if(all(A%i1 /=3) .or. all(A(1:8)%i2/=55)) then 
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
