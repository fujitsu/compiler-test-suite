MODULE mod1

TYPE first
  INTEGER :: i
END TYPE

TYPE second
  TYPE(first) :: ff
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: a(10) = 0
TYPE(first) :: ob_f
TYPE(second) :: ob_s
ob_s%ff%i = 5
ob_f%i = 8

ASSOCIATE(b => a( : ))
  b((ob_s%ff%i) : ob_f%i) = 1
END ASSOCIATE

IF(ALL(a(5:8)==1)) THEN
  a(5:8) = 0
ELSE
  a(5:8) = 1
END IF

IF(ALL(a(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
