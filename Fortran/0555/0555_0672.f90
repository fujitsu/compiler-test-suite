MODULE mod1
TYPE first
 Integer :: i1=1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2=2
END TYPE
 
TYPE,EXTENDS(second) :: third
 Integer :: i3=3
END TYPE
END MODULE

PROGRAM main
interface 
  SUBROUTINE sub(A)
    use mod1
    CLASS(*),ALLOCATABLE :: A  
  END SUBROUTINE
end interface
CLASS(*),allocatable :: act

call sub(act)
END PROGRAM

SUBROUTINE sub(A)
use mod1
CLASS(*),ALLOCATABLE :: A
TYPE(second)::obj

obj%i1=3
ALLOCATE(A,SOURCE=obj)
SELECT TYPE(A)
 TYPE IS(INTEGER)
  print*,111
 CLASS IS(first)
  print*,112
 TYPE IS(third)
  print*,113
 CLASS IS(second)
  if(A%i1 .EQ. 3) then
    print*,'pass'
  else
    print*,114
  endif  
 CLASS IS(third)
  print*,115
END SELECT
END 