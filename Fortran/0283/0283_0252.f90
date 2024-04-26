MODULE mod1
IMPLICIT NONE
TYPE tt
  INTEGER :: i
END TYPE
END MODULE

PROGRAM main

USE mod1
IMPLICIT NONE
INTEGER :: arr(2:11) = 0
TYPE(tt) :: ob_1,ob_2
ob_1%i = 3
ob_2%i = 7

ASSOCIATE(b => arr(ob_1%i : ))
  b(ob_1%i:ob_2%i) = 1
END ASSOCIATE

IF(ALL(arr(5:9) == 1)) THEN
  arr(5:9) = 0
ELSE
  arr(5:9) = 1
END IF

IF(ALL(arr(2:11) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
