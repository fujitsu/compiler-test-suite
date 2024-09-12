PROGRAM main
TYPE first
 Integer :: i1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
 
CLASS(first),POINTER :: A
TYPE(second),TARGET :: tgt

A=>tgt

A%i1=2
 
SELECT TYPE(A)
 CLASS IS(second)
  A%i1=3
  A%i2=5
  if(A%i1 /=3) then 
    print*,212
  else 
    print*,'pass'
  endif
END SELECT
 
END PROGRAM
