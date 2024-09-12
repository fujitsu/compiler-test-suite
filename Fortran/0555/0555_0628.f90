MODULE mod1
TYPE first
 Integer :: i1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
END MODULE

PROGRAM main
use mod1 

interface
  SUBROUTINE sub(A)
    use mod1
    CLASS(first),ALLOCATABLE :: A
  end subroutine
end interface
 CLASS(first),allocatable :: act
 call sub(act)
END PROGRAM

SUBROUTINE sub(A)
use mod1
 
CLASS(first),ALLOCATABLE :: A
ALLOCATE(second::A)
SELECT TYPE(A)
 CLASS IS(second)
 A%i1=3
 A%i2=5
  if(A%i1 /=3) then 
    print*,212
  else 
    print*,'pass'
  endif
END SELECT

END 
