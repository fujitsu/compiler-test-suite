MODULE mod1
TYPE first
 Integer :: i1=4
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
 
TYPE,EXTENDS(second) :: third
 Integer :: i3
END TYPE
END MODULE

PROGRAM main
interface 
  SUBROUTINE sub(A)
    use mod1
    CLASS(*),ALLOCATABLE :: A(:) 
  END SUBROUTINE
end interface
CLASS(*),allocatable :: act(:)

call sub(act)
END PROGRAM

SUBROUTINE sub(A)
use mod1
CLASS(*),ALLOCATABLE :: A(:)
TYPE(second)::obj(5)

obj(5)%i1=30
ALLOCATE(A,SOURCE=obj)
SELECT TYPE(A)
 TYPE IS(INTEGER)
  print*,111
 CLASS IS(first)
  print*,112
 TYPE IS(third)
  print*,113
 CLASS IS(second)
  if(A(5)%i1 .EQ. 30 .and. A(1)%i1 .EQ. 4) then
    print*,'pass'
  else
    print*,114
  endif  
 CLASS IS(third)
  print*,115
END SELECT
END 
