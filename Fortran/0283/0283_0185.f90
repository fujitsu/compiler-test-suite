MODULE mod1
IMPLICIT NONE

INTERFACE
REAL FUNCTION fun_1(dy1,dy2)
IMPLICIT NONE
REAL :: dy1,dy2,fun_2
END FUNCTION

FUNCTION fun_2(dy1)
END FUNCTION

END INTERFACE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

REAL :: lr= 3.0,rl = 4.0,res
ASSOCIATE(aa => fun_2(lr))
  res = fun_1(aa,rl)    
END ASSOCIATE

IF(res .EQ. 12.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM 

REAL FUNCTION fun_1(dy1,dy2)
IMPLICIT NONE
REAL :: dy1,dy2,fun_2
fun_1 = dy1*dy2
RETURN
ENTRY fun_2(dy1)
fun_2 = dy1 
RETURN
END FUNCTION
