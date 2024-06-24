PROGRAM main
IMPLICIT NONE

INTEGER :: res
INTEGER,DIMENSION(3:12) :: arr
arr = 10

res = fun(arr(5:10))

IF(res .EQ. 1) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun(dd1)
IMPLICIT NONE
INTEGER :: fun
INTEGER,DIMENSION(2:),INTENT(IN) :: dd1
ASSOCIATE(aa => dd1 * 3)
  SELECT CASE(aa(5))
  CASE(30)
  ASSOCIATE(bb => aa  + (/1,2,3,4,5,6/))
    IF((33 .EQ. bb(3)) .OR. ((34 .EQ. bb(4)))) THEN
      fun = 1
    ELSE
      fun = 0
    END IF
  END ASSOCIATE 
  END SELECT
END ASSOCIATE
END FUNCTION

END PROGRAM