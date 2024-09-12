MODULE mod1
TYPE first
 Integer :: i1=1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2=2
END TYPE
END MODULE

PROGRAM main
use mod1 

interface
SUBROUTINE sub(dmy)
use mod1
CLASS(*),ALLOCATABLE :: dmy
end subroutine
end interface

 TYPE con
   TYPE(second)::obj_second
 END TYPE
 TYPE(con)::obj
 CLASS(*),allocatable :: act
  
 obj%obj_second%i2=3
 ALLOCATE(act,SOURCE=obj%obj_second)
 call sub(act)
END PROGRAM

SUBROUTINE sub(dmy)
use mod1
CLASS(*),ALLOCATABLE :: dmy
SELECT TYPE(dmy)
 CLASS IS(second)
 if(dmy%i2 .EQ. 3) then
  print*,'pass'
 else
  print*,112
 endif
END SELECT
END SUBROUTINE 
