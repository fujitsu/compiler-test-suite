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
 CLASS IS(first)
  A%i1=3
  PRINT*,A%i1,'PASS'
END SELECT

END PROGRAM