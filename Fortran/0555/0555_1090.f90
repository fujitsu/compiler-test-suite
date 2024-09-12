PROGRAM main
TYPE first
 Integer :: i1
END TYPE

TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE

CLASS(first),ALLOCATABLE :: A

allocate(A)
A%i1=3

SELECT TYPE(A) 
 TYPE IS (first)
  PRINT*,A%i1,'PASS'
 TYPE IS (second)
  A%i2=3
  PRINT*,A%i2
 CLASS DEFAULT
  PRINT*,'wrong choice'
END SELECT

END PROGRAM
