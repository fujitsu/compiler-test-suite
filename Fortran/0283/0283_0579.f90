MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: nn
  REAL :: rr
  REAL,DIMENSION(3,4) :: arr
  COMPLEX :: cmp
END TYPE

END MODULE 

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: res

ASSOCIATE(aa => t1(12,12.30,10.50,(5.0,6.0)))
  SELECT CASE(aa%nn)
    CASE(12)
     ASSOCIATE(bb => TRANSPOSE(aa%arr))
       IF(bb(4,3) .EQ. 10.50) THEN
         ASSOCIATE(cc => AIMAG(aa%cmp) * bb(4,3))
           ASSOCIATE(dd => cc + (/1.0,2.0,3.0,4.0,5.0/))
             IF(dd(1) .EQ. 64.00) res = 1
           END ASSOCIATE
         END ASSOCIATE
       ELSE
         res = 0
       END IF
     END ASSOCIATE
  END SELECT
END ASSOCIATE

IF(res .EQ. 1) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
