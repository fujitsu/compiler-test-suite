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
 
 CLASS(first),pointer :: ptr
 call sub(ptr)
contains
SUBROUTINE sub(A)
CLASS(first),POINTER :: A
TYPE(second),POINTER :: ptr
TYPE(second),TARGET :: tgt

A => tgt
A%i1=1
 
SELECT TYPE(A)
 TYPE IS(first)
  A%i1=3
  PRINT*,101
 CLASS IS(second)
  A%i1=3
  A%i2=5
  ptr=>A
  if(ptr%i2 /=5) then 
    print*,214
  else 
    print*,'pass'
  endif
 TYPE IS(third)
  A%i1=3
  A%i2=5
  A%i3=8
  PRINT*,102
END SELECT

END SUBROUTINE
END PROGRAM
