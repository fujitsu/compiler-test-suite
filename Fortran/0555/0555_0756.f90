MODULE mod1
TYPE first
 Integer :: i1=0
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2=0
END TYPE
 
TYPE,EXTENDS(second) :: third
 Integer :: i3=0
END TYPE
END MODULE

PROGRAM main
use mod1 
interface
  SUBROUTINE sub(A)
  use mod1
    CLASS(*),ALLOCATABLE :: A(:)
  END SUBROUTINE
end interface

CLASS(*),ALLOCATABLE :: act(:)
call sub(act)
END PROGRAM

SUBROUTINE sub(A)
use mod1
CLASS(*),ALLOCATABLE :: A(:)
TYPE(second)::obj(4)

obj%i1=3
obj(3)%i1=30
ALLOCATE(A,SOURCE=obj)
SELECT TYPE(A)
 CLASS IS(first)
 PRINT*,111
 CLASS IS(second)
 if(A(3)%i1 .EQ. 30) then
   print*,'pass'
 else
   print*,112
 endif
 CLASS IS(third)
 PRINT*,113
END SELECT

END 
