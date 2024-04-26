PROGRAM main
IMPLICIT NONE

INTEGER  :: num = 150

ASSOCIATE(aa => num)
  CALL sub(aa)
  SELECT CASE(aa)
  CASE (150)
    aa = 0
  CASE (170)
    aa = aa - 20
  CASE DEFAULT
    aa = 0
  END SELECT
  IF(aa - 50) 10,10,20
  10 aa = 0
  20 aa = 1
END ASSOCIATE

IF(num .EQ. 1) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

SUBROUTINE sub(n)
INTEGER :: n
n = n + 20
END SUBROUTINE

END PROGRAM
