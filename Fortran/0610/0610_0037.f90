PROGRAM main
TYPE first
 Integer :: i1=1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2=1
END TYPE
 
TYPE(second),pointer :: ptr

allocate(ptr)
SELECT TYPE(A=>funA(ptr))
 TYPE IS(second)
  if(A%i1/=3) then
    print*,102
  else 
    print*,'pass'
  endif
END SELECT

contains
FUNCTION funA(tgt)
CLASS(*),POINTER :: funA
TYPE(second),TARGET :: tgt
tgt%i1=3
funA => tgt
END FUNCTION
END PROGRAM
