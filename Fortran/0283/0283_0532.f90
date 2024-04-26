MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: r1 = 1.0
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
TYPE(t2),ALLOCATABLE :: obj1,obj2
TYPE(t3),TARGET :: tgt

ALLOCATE(obj1)
obj1%r1 = 4.0
tgt%r3 = 10.0
ptr => tgt

ASSOCIATE(aa => ptr , bb => obj1)
  ptr2 => aa
  ALLOCATE(obj2,SOURCE = bb)
  SELECT TYPE(ptr2)
    TYPE IS(t3)
      obj2%r1 = obj2%r1 + 1.0
  END SELECT 
END ASSOCIATE

IF(obj2%r1 .EQ. 5.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM  
