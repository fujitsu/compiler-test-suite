MODULE mod1
IMPLICIT NONE

REAL :: rr = 2.0

INTERFACE
REAL FUNCTION fun_1(dy)
IMPLICIT NONE
REAL :: dy
END FUNCTION
END INTERFACE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

REAL :: lr= 3.0

ASSOCIATE(aa => fun_1(lr))
  lr =lr + aa
END ASSOCIATE

IF(lr .EQ. 9.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM 

REAL FUNCTION fun_1(dy)
USE mod1,ONLY : rr
IMPLICIT NONE
REAL :: dy
fun_1 = dy*rr
END FUNCTION
