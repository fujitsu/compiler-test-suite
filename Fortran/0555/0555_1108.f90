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
 TYPE IS(second)
  A%i1=3
  A%i2=5
  PRINT*,A%i1,A%i2,'PASS'
END SELECT

END PROGRAM
