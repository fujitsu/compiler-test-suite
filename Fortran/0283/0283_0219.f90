PROGRAM main

INTEGER :: a(6)=0

TYPE tt
  INTEGER :: i
END TYPE

TYPE(tt):: tt1,tt2
tt1%i=4
tt2%i=3

ASSOCIATE(b=>a(:tt1%i))
  b(:tt2%i)=1
END ASSOCIATE

IF(ALL(a(1:3)==1)) THEN
  a(1:3) = 0
ELSE
  a(1:3) = 1
END IF

IF(ALL(a(1:6) == 0 )) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'101'
END IF

END PROGRAM
