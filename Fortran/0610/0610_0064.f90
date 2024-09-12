PROGRAM main
TYPE first
 Integer :: i1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
 
TYPE,EXTENDS(second) :: third
 Integer :: i3
END TYPE
 
SELECT TYPE(A=>ifun())
  TYPE IS(first)
   print*,211
 TYPE IS(second)

  if(A(3)%i1==2) then
   print*,'pass'
  else
   print*,101,A(3)%i1
  endif

 TYPE IS(third)
   print*,213
END SELECT

CONTAINS

FUNCTION ifun()
CLASS(*),ALLOCATABLE :: ifun(:)
ALLOCATE(second::ifun(6))
SELECT TYPE(ifun)
TYPE IS(second)
ifun%i1=12
ifun(3)%i1=2
END SELECT
END FUNCTION

END PROGRAM
