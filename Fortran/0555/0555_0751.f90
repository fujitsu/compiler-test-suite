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
INTERFACE
SUBROUTINE sub(dmy)
  use mod1
  CLASS(*),ALLOCATABLE :: dmy(:)
END SUBROUTINE
END INTERFACE 

 TYPE con
   TYPE(second)::obj_second(4)
 END TYPE
 TYPE(con)::obj
 CLASS(*),allocatable :: act(:)
  
 obj%obj_second%i2=3
 obj%obj_second(4)%i2=5
 ALLOCATE(act,SOURCE=obj%obj_second)
 call sub(act)
END PROGRAM

SUBROUTINE sub(dmy)
use mod1
CLASS(*),ALLOCATABLE :: dmy(:)
SELECT TYPE(dmy)
 CLASS IS(second)
 if(dmy(3)%i2 == 3 .and. dmy(4)%i2 ==5) then
  print*,'pass'
 else
  print*,112
 endif
END SELECT
END SUBROUTINE 
