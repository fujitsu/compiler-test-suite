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
TYPE(second),TARGET :: tgt
 
A => tgt
A%i1=3
 
SELECT TYPE(asc=>A)
 TYPE IS(first)
  asc%i1=3
  PRINT*,'101'
 TYPE IS(second)
  asc%i1=3
  asc%i2=5
  if(asc%i1 /=3) then 
    print*,212
  else 
    print*,'pass'
  endif
 TYPE IS(third)
  asc%i1=3
  asc%i2=5
  asc%i3=8
  PRINT*,'102'
END SELECT

END SUBROUTINE
END PROGRAM
