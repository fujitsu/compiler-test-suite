PROGRAM main
TYPE first
 Integer :: i1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
 
 CLASS(first),pointer :: ptr
 call sub(ptr)
contains
SUBROUTINE sub(A)
 
CLASS(first),POINTER :: A
TYPE(second),TARGET :: tgt
tgt%i1=3
A => tgt
 
SELECT TYPE(asc=>A)
 TYPE IS(second)
  asc%i1=3
  asc%i2=5
  if(asc%i1 /=3) then 
    print*,212
  else 
    print*,'pass'
  endif
END SELECT

END SUBROUTINE 
END PROGRAM
