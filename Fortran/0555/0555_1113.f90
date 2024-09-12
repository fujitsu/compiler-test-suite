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
  A%i2=5
  if(A%i1==3 .and. A%i2==5) print*,'PASS'
END SELECT

END PROGRAM
