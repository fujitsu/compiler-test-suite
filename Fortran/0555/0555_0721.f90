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
    CLASS(first),ALLOCATABLE :: A(:,:,:)
  END SUBROUTINE
end interface

 CLASS(first),allocatable :: act(:,:,:)
 call sub(act)
END PROGRAM

SUBROUTINE sub(A)
use mod1
 
CLASS(first),ALLOCATABLE :: A(:,:,:)
 ALLOCATE(second::A(2,4,5))
A%i1=2
A(1,2,1)%i1=6
 
SELECT TYPE(A)
 TYPE IS(first)
  PRINT*,111
 CLASS IS(first)
  A%i1=3
  PRINT*,112
 TYPE IS(second)
  if(A(1,2,1)%i1 /=6) then 
    print*,212
  else 
    print*,'pass'
  endif
 CLASS IS(second)
  PRINT*,113
 TYPE IS(third)
  PRINT*,114
 CLASS IS(third)
  PRINT*,115
END SELECT

END 
