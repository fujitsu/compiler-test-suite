PROGRAM main
IMPLICIT NONE

TYPE tt
 INTEGER :: i(5) = 0
END TYPE

TYPE(tt) :: obj(3)

ASSOCIATE(aa => obj)
  aa(2)%i = 1
END ASSOCIATE

IF(ALL(obj(2)%i .EQ. 1)) THEN
  obj(2)%i = 0
ELSE
  obj(2)%i = 1
END IF

IF(ALL(obj(2)%i .EQ. 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
