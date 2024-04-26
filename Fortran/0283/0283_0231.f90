PROGRAM main

INTEGER :: arr(10)= 0,a1(2,3)
a1(2,2) = 2
a1(2,3) = 8
a1(2,1) = 5

ASSOCIATE(b => arr(a1(2,2) : a1(2,3)))
  b( : a1(2,1)) = 1
END ASSOCIATE

IF(ALL(arr(2:6) == 1)) THEN
  arr(2:6) = 0
ELSE
  arr(2:6) = 1
END IF

IF(ALL(arr(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
