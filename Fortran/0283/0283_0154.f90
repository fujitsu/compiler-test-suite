MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: r
END TYPE

TYPE,EXTENDS(t1) :: t2
  REAL  :: r2
END TYPE

TYPE,EXTENDS(t2) :: t3
  REAL :: r3
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(t1),POINTER :: ptr
TYPE(t3),TARGET :: tgt

ptr => tgt

ASSOCIATE(aa => ptr)
  SELECT TYPE(aa)
  TYPE IS(t1) 
    tgt%r3 = 12.5
  TYPE IS(t3) 
    tgt%r3 = 15.0
  END SELECT 
  aa%r = 10.0
END ASSOCIATE
IF(ptr%r .EQ. 10.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM  
