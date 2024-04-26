MODULE mod1
IMPLICIT NONE
TYPE tt
  INTEGER :: i
END TYPE
END MODULE

PROGRAM main

USE mod1
IMPLICIT NONE
INTEGER :: arr(4:13) = 0,m = 3
TYPE(tt) :: ob_1
ob_1%i = 2

ASSOCIATE(b => arr(ob_1%i+m :ob_1%i*2 ))
  b(ob_1%i*m) = 1
END ASSOCIATE

IF(arr(10) == 1) THEN
  arr(10) = 0
ELSE
  arr(10) = 1
END IF

IF(ALL(arr(4:13) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
