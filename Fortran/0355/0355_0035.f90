PROGRAM main
TYPE first
 Integer :: i1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE

TYPE,EXTENDS(first) :: second2
 Integer :: xx
END TYPE

TYPE,EXTENDS(first) :: second3
 Integer :: xx
END TYPE

 CLASS(first),pointer :: ptr
 call sub(ptr)
contains
SUBROUTINE sub(A)
 
CLASS(first),POINTER :: A
TYPE(second),TARGET :: tgt
tgt%i1=3
A => tgt
 
SELECT TYPE(A)
 TYPE IS(first)
  print*,'NG'
 TYPE IS(second)
  A%i1=3
  A%i2=5
  if(A%i1 /=3) then 
    print*,212
  else 
    print*,'pass'
  endif
 TYPE IS(second2)
  print*,'NG'   
 TYPE IS(second3)
  print*,'NG'    
END SELECT

END SUBROUTINE 
END PROGRAM
