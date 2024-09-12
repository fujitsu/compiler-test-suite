PROGRAM main
TYPE first
 Integer :: i1
END TYPE

TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE

CLASS(*),ALLOCATABLE :: A

allocate(character::A)

SELECT TYPE(A) 
 TYPE IS (integer)
  A=2
  PRINT*,A
 TYPE IS (real)
  A=2.0
  PRINT*,A
 TYPE IS (character(*))
  A='a'
  PRINT*,A,'PASS'
END SELECT

END PROGRAM
