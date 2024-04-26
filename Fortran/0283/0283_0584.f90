PROGRAM main
IMPLICIT NONE

INTEGER :: res
COMPLEX :: cmp1 = (12.30,15.55),cmp2 = (20.15,16.90)

ASSOCIATE(aa => AIMAG(cmp1 + cmp2))
  IF(aa .EQ. 32.45) THEN
    ASSOCIATE(bb => INT(aa) * 2)
      SELECT CASE(bb)
      CASE(64)
      ASSOCIATE(cc => (/2,4,7,6,1/) * bb)
        IF(cc(3) .EQ. 448) res = 1
      END ASSOCIATE
      END SELECT
    END ASSOCIATE
  ELSE
    res = 0
  END IF
END ASSOCIATE

IF(res .EQ. 1) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
