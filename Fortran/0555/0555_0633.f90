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
   CLASS(first),ALLOCATABLE :: A 
 END SUBROUTINE
end interface

 CLASS(first),allocatable :: act
 call sub(act)
END PROGRAM

SUBROUTINE sub(A)
use mod1
 
CLASS(first),ALLOCATABLE :: A
ALLOCATE(second::A)
A%i1=2
 
SELECT TYPE(A)
 CLASS IS(first)
  A%i1=3
  print*,210
 CLASS IS(second)
  A%i1=3
  A%i2=5
  if(A%i1 /=3) then 
    print*,211
  else 
    print*,'pass'
  endif
 CLASS IS(third)
  A%i1=3
  A%i2=5
  A%i2=8
  print*,212
END SELECT

END 
