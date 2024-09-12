PROGRAM main
TYPE first
 Integer :: i1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
 
CLASS(first),POINTER :: A(:)
TYPE(second),TARGET :: tgt(3)

tgt%i1=3
tgt(3)%i1=7
A=>tgt
 
SELECT TYPE(A)
 CLASS IS(second)
  if(A(3)%i1 /=7) then 
    print*,212
  else 
    print*,'pass'
  endif
END SELECT
 
END PROGRAM
