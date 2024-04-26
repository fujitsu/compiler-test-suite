PROGRAM main

INTEGER :: a(8)=0

TYPE upp
  INTEGER :: i
END TYPE

TYPE low
  TYPE(upp) :: j
END TYPE

TYPE(low) :: obj
TYPE(upp) :: ob
obj%j%i=8
ob%i=3

ASSOCIATE(b=>a(ob%i:obj%j%i))
  b(4)=1
END ASSOCIATE

IF(a(6)==1) THEN
  a(6) = 0
ELSE
  a(6) = 1
END IF

IF(ALL(a(1:8) == 0 )) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'101'
END IF

END PROGRAM
