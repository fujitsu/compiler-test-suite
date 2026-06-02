MODULE mod1
TYPE first
 Integer :: i1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
END MODULE

PROGRAM main
use mod1 

 
CLASS(first),ALLOCATABLE :: A(:)
ALLOCATE(second::A(5))
SELECT TYPE(X=>A)
 TYPE IS(first)
     print*,"101"
 TYPE IS(second)
 X(1)%i1=3
 X(1)%i2=X(1)%i1 +2
  if(X(1)%i1 /=3) then 
    print*,212
  else 
    print*,'pass'
  endif
  SELECT TYPE(X=>A)
    TYPE IS(first)
         print*,"101"
    TYPE IS(second)
     if(X(1)%i1.ne.3)print*,"191"
     if(X(X(1)%i1-2)%i2.ne.5)print*,"192"
        X(1)%i2 =7
        call sub2(X(X(1)%i1-2))
   END SELECT
     if(X(1)%i2.ne.7)print*,"193"
END SELECT
contains 
subroutine sub2(X)
type(second)::X
if(X%i1.ne.3)print*,"191"
if(X%i2.ne.7)print*,"192"
end subroutine
END 
