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
   CLASS(first),ALLOCATABLE :: A(:) 
 END SUBROUTINE
end interface

 CLASS(first),allocatable :: act(:)
 call sub(act)
END PROGRAM

SUBROUTINE sub(A)
use mod1
 
CLASS(first),ALLOCATABLE :: A(:)
ALLOCATE(second::A(3))
A%i1=2
A(3)%i1=1
 
SELECT TYPE(A)
 CLASS IS(first)
  print*,210
 CLASS IS(second)
  if(A(3)%i1 /=1) then 
    print*,211
  else 
    print*,'pass'
  endif
 CLASS IS(third)
  print*,212
END SELECT

END 
