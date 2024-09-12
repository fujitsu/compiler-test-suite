PROGRAM main
TYPE first
 Integer :: i1
END TYPE

TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE

CLASS(*),POINTER :: A
TYPE(second),TARGET :: tgt

A => tgt

SELECT TYPE(A) 
 TYPE IS (first)
  A%i1=3
  PRINT*,A%i1
 TYPE IS (second)
  A%i1=3
  A%i2=5
  PRINT*,A%i1,A%i2,'PASS'
 CLASS DEFAULT
  PRINT*,'wrong choice'
END SELECT

END PROGRAM
