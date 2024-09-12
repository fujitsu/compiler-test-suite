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
 
 CLASS(first),pointer :: ptr(:,:,:,:)
 call sub(ptr)
contains
SUBROUTINE sub(A)
CLASS(first),POINTER :: A(:,:,:,:)
TYPE(second),TARGET :: tgt(2,3,4,5)
 
tgt%i1=2
tgt(2,3,1,4)%i1=5
A => tgt
 
SELECT TYPE(A)
 TYPE IS(first)
  PRINT*,'101'
 TYPE IS(second)
  if(A(2,3,1,4)%i1 /=5) then 
    print*,212
  else 
    print*,'pass'
  endif
 TYPE IS(third)
  PRINT*,'102'
END SELECT

END SUBROUTINE
END PROGRAM
