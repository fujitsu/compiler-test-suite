PROGRAM main
TYPE first
 Integer :: i1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
 
CLASS(first),pointer :: ptr(:)
call sub(ptr)
contains

SUBROUTINE sub(A)
CLASS(first),POINTER :: A(:)
TYPE(second),TARGET :: tgt(3)
tgt%i1=2
tgt(3)%i1=3
A => tgt
 
SELECT TYPE(A)
 TYPE IS(second)
  if(A(3)%i1 /=3) then 
    print*,212
  else 
    print*,'pass'
  endif
END SELECT

END SUBROUTINE 
END PROGRAM
