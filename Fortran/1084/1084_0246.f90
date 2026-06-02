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

interface
  SUBROUTINE sub(A)
    use mod1
    CLASS(first),ALLOCATABLE :: A
  end subroutine
end interface
 CLASS(first),allocatable :: act
 call sub(act)
END PROGRAM

SUBROUTINE sub(A)
use mod1
 
CLASS(first),ALLOCATABLE :: A
ALLOCATE(second::A)
SELECT TYPE(X=>A)
 TYPE IS(first)
     print*,"101"
 TYPE IS(second)
 X%i1=3
 X%i2=X%i1 +2
     !call sub(X)
  if(X%i1 /=3) then 
    print*,212
  else 
    print*,'pass'
  endif
  SELECT TYPE(X=>A)
    TYPE IS(first)
         print*,"101"
    TYPE IS(second)
     if(X%i1.ne.3)print*,"191"
     if(X%i2.ne.5)print*,"192"
       X%i2 =7
     call sub2(X)
     !call sub(X)
   END SELECT
     if(X%i2.ne.7)print*,"193"
END SELECT
contains 
subroutine sub2(X)
type(second)::X
if(X%i1.ne.3)print*,"191"
if(X%i2.ne.7)print*,"192"
end subroutine
END 
