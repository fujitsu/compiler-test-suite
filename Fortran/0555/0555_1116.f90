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
TYPE(third),TARGET :: obj

obj%i1=31
obj%i2=32
tgt%i2=32
obj%i3=33

A => tgt
A%i1=3

SELECT TYPE(A) 
 TYPE IS (first)
  PRINT*,A%i1
 TYPE IS (second)
  if(A%i1==3 .and. A%i2==32) print*,'PASS'
 CLASS DEFAULT
  PRINT*,'wrong choice'
END SELECT

A=>obj

obj%i3=33
if(A%i1/=31) print*,'101'
END PROGRAM
