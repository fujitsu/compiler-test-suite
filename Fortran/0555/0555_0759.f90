MODULE mod1
TYPE first
 Integer :: i1=10
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2=20
END TYPE
 
TYPE,EXTENDS(second) :: third
 Integer :: i3=30
END TYPE
END MODULE

PROGRAM main
interface 
  SUBROUTINE sub(A)
    use mod1
    CLASS(*),POINTER :: A(:) 
  END SUBROUTINE
end interface
CLASS(*),POINTER :: ptr(:)

call sub(ptr)
END PROGRAM

SUBROUTINE sub(A)
use mod1
CLASS(*),POINTER :: A(:)
TYPE(second),TARGET::obj(5)

obj(5)%i1=3
obj(5)%i2=4
A=>obj
SELECT TYPE(A)
 TYPE IS(INTEGER)
  print*,111
 CLASS IS(first)
  print*,112
 TYPE IS(third)
  print*,113
 CLASS IS(second)
  if(A(1)%i1 == 10 .and. A(1)%i2 == 20 .and.A(5)%i1 == 3 .and.A(5)%i2 == 4) then
    print*,'pass'
  else
    print*,114
  endif  
 CLASS IS(third)
  print*,115
END SELECT
END 
