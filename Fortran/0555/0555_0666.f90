PROGRAM main
TYPE first
 Integer :: i1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
 
CLASS(*),POINTER :: ptr
TYPE(second),TARGET :: tgt

tgt%i1=7
ptr=>tgt
 
SELECT TYPE(ptr)
 CLASS IS(second)
 if(ptr%i1 .EQ. 7) then
   print*,'pass'
 else
   print*,112
 endif
END SELECT
 
END PROGRAM
