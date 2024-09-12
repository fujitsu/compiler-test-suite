PROGRAM main
TYPE first
 Integer :: i1
END TYPE

TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE

CLASS(first),POINTER :: A
TYPE(second),TARGET :: tgt

A => tgt
A%i1=3

SELECT TYPE(A) 
 TYPE IS (first)
  PRINT*,A%i1
 TYPE IS (second)
  A%i1=5
  A%i2=15
  PRINT*,A%i1,A%i2,'PASS'
 CLASS DEFAULT
  PRINT*,'wrong choice'
END SELECT

END PROGRAM
