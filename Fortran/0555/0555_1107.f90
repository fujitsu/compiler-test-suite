PROGRAM main
TYPE first
 Integer :: i1
END TYPE

TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE

CLASS(*),ALLOCATABLE :: A

allocate(integer::A)

SELECT TYPE(A) 
 TYPE IS (integer)
  A=2
  PRINT*,A,'PASS'
END SELECT

END PROGRAM
