PROGRAM main
IMPLICIT NONE

INTEGER :: i ,j = 0
INTEGER,DIMENSION(10) :: a,b
a = (/2,-1,3,-2,4,-5,8,-2,3,-9/)
b = (/3,6,1,7,-1,8,-2,9,-8,10/)

ASSOCIATE(n => i)
  FORALL(n = 1:10,j = 1:10,a(n) .GT. 1  .AND. b(j) .GT. 5)
    a(n) = 0
    b(j) = 0
  END FORALL
END ASSOCIATE

IF(ALL(a(1:10:2) .EQ. 0) .AND. ALL(b(2:10:2) .EQ. 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
