PROGRAM main

INTEGER :: aa(6)=0

ASSOCIATE(b=>aa(2:fun()))
  b(3)=1
END ASSOCIATE

IF(aa(4)==1) THEN
  aa(4)=0
ELSE
  aa(4)=1
END IF

IF(ALL(aa(1:6) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'101'
END IF

CONTAINS 

FUNCTION fun()
  INTEGER :: fun
  fun=5
  END FUNCTION

END PROGRAM
