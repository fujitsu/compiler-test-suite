PROGRAM main
TYPE first
 Integer :: i1=4
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2=5
END TYPE
 
TYPE,EXTENDS(second) :: third
 Integer :: i3=6
END TYPE
 
CLASS(*),pointer :: ptr(:)
TYPE(second),TARGET :: tgt(4)

tgt(1)%i1=10
tgt(2)%i2=40
ptr=>tgt
call sub(ptr)
contains

SUBROUTINE sub(A)
CLASS(*),POINTER :: A(:)
 
SELECT TYPE(A)
 TYPE IS(first)
  PRINT*,A,'101'

 TYPE IS(second)
 if(A(1)%i1 == 10 .and. A(2)%i2 == 40 .and. A(2)%i1 == 4 .and. A(1)%i2 == 5  ) then
   print*,'pass'
 else
   print*,116
 endif

 TYPE IS(third)
  PRINT*,A,'102'
END SELECT
END SUBROUTINE

END PROGRAM
