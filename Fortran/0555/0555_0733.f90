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
 
CLASS(first),pointer :: ptr1(:)
call sub(ptr1)
contains
SUBROUTINE sub(A)
CLASS(first),POINTER :: A(:)
TYPE(second),POINTER :: ptr(:)
TYPE(second),TARGET :: tgt(2)

tgt%i1=2
tgt(2)%i1=4
A => tgt
 
SELECT TYPE(A)
 TYPE IS(first)
  PRINT*,101
 CLASS IS(second)
  ptr=>A
  if(ptr(2)%i1 /=4) then 
    print*,214
  else 
    print*,'pass'
  endif
 TYPE IS(third)
  PRINT*,102
END SELECT

END SUBROUTINE
END PROGRAM
