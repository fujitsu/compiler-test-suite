MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: r1
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

REAL :: rr = 2.0,var = 3.0
TYPE(t1) :: obj
obj%r1 = 5.0

ASSOCIATE(aa => obj , bb => fun_1(rr,obj) + var)
  DO WHILE(aa%r1 .GT. 0.0)
    aa%r1 = aa%r1 - 1
  END DO
  IF(bb) 10,20,20
  10 aa%r1 = -1.0
  20 aa%r1 = 1.0
END ASSOCIATE

IF(obj%r1 .EQ. 1.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

REAL FUNCTION fun_1(d1,d2)
REAL :: d1
TYPE(t1) :: d2
fun_1 = d1 + d2%r1 
END FUNCTION

END PROGRAM
