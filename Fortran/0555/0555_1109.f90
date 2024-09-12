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

CLASS(first),POINTER :: A
TYPE(second),TARGET :: tgt

A => tgt
A%i1=3

SELECT TYPE(A) 
 CLASS IS(first)
  A%i1=3
  PRINT*,A%i1
 CLASS IS(second)
  A%i1=3
  A%i2=5
  PRINT*,A%i1,A%i2,'PASS'
 CLASS IS(third)
  A%i1=3
  A%i2=5
  A%i3=7
  PRINT*,A%i1,A%i2,A%i3
END SELECT

END PROGRAM
