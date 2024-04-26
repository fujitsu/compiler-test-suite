MODULE mod1

TYPE tt
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: a(10) = 0
TYPE(tt) :: ob
ob%i=2

ASSOCIATE(b => a( : :ob%i))
  b( : :ob%i) = 1
END ASSOCIATE

IF(ALL(a(1:9:4) .EQ. 1)) THEN
  a(1:9:4) = 0
ELSE
  a(1:9:4) = 1
END IF

IF(ALL(a(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
