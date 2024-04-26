MODULE mod1

TYPE t1
  INTEGER :: i
END TYPE

TYPE t2
  TYPE(t1) :: ob
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: a(10)=0
TYPE(t2) :: ob_t
TYPE(t1) :: ob_tt
ob_t%ob%i = 2
ob_tt%i = 4

ASSOCIATE(b=>a(:))
  b(ob_t%ob%i : ob_tt%i) =1
END ASSOCIATE

IF(ALL(a(2:4) .EQ. 1)) THEN
  a(2:4) = 0
ELSE
  a(2:4) = 1
END IF

IF(ALL(a(1:10) == 0 )) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
