PROGRAM main
IMPLICIT NONE

INTEGER :: num = 10,x = 2 , y = 3

ASSOCIATE(aa => num)
  aa = aa - x
  GOTO(10,20,30)  aa-(x*y)
  x = x + 2
  y = y + 2
  10 aa = aa + 2
  20 aa = aa + 2
  30 aa = aa + 5
  SELECT CASE(aa)
    CASE (15)
    aa = 0
  END SELECT
END ASSOCIATE

IF(num .EQ. 0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
