MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  REAL :: r2
END TYPE

TYPE,EXTENDS(t2) :: t3
  REAL :: r3
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(t1),POINTER :: ptr,ptr2
CLASS(t3),ALLOCATABLE :: acc
TYPE(t3),TARGET :: tgt
ALLOCATE(acc)

acc%r3 = 3.0
tgt%r3 = 10.0
ptr => tgt

ASSOCIATE(aa => ALLOCATED(acc) , bb => acc , cc => ptr)
  ptr2 => cc
  SELECT TYPE(bb) 
  TYPE IS(t3)
    tgt%r3 = 1.0
  END SELECT    
  IF(aa) THEN
    tgt%r3 = tgt%r3 + 1.0
  ELSE
    tgt%r3 = tgt%r3 - 1.0
  END IF
  IF(ASSOCIATED(ptr2)) NULLIFY(ptr2)
END ASSOCIATE

IF(tgt%r3 .EQ. 2.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
