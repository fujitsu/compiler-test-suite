PROGRAM main

INTEGER ::arr(6,5,6)=0

ASSOCIATE(aa=>arr)
  aa(fun(2):,5,fun(2)+2*fun(2))=1
END ASSOCIATE

IF(ALL(arr(2:6,5,6)==1)) THEN
  arr(2:6,5,6)=0
ELSE
  arr(2:6,5,6)=1
END IF

IF(ALL(arr == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'101'
END IF

CONTAINS

FUNCTION fun(d1)
  INTEGER :: fun,d1
  fun = d1
END FUNCTION

END PROGRAM
