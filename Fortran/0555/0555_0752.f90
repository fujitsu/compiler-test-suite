PROGRAM main
TYPE first
 Integer :: i1=5
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2=19
END TYPE
 
CLASS(*),POINTER :: ptr(:)
TYPE(second),TARGET :: tgt(4)

tgt(1)%i1=9
tgt(3)%i1=7
tgt(4)%i2=23
ptr=>tgt
 
SELECT TYPE(ptr)
 CLASS IS(second)
 if(ptr(1)%i1 == 9 .and. ptr(2)%i1==5 .and. ptr(3)%i1==7 .and. ptr(1)%i2==19 .and.  ptr(4)%i2==23) then
   print*,'pass'
 else
   print*,112
 endif
END SELECT
 
END PROGRAM
