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
 CLASS DEFAULT
  A%i1=33
  if(A%i1==33) print*,'PASS'
END SELECT

END PROGRAM
