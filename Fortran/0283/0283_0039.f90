MODULE mod1

TYPE tt
  INTEGER :: i
END TYPE

TYPE tt_t
  TYPE(tt) :: ob
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: a(10) =0,m=2
TYPE(tt_t) :: obj
TYPE(tt) :: ob1
obj%ob%i = 4
ob1%i = 3

ASSOCIATE(b => a(ob1%i : :m*1))
  b(m*1 : obj%ob%i) = 1
END ASSOCIATE

IF(ALL(a(5:9:2) .EQ. 1)) THEN
  a(5:9:2) = 0
ELSE
  a(5:9:2) = 1
END IF

IF(ALL(a(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
