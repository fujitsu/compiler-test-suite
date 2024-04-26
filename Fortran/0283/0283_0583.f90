PROGRAM main
IMPLICIT NONE

INTEGER :: i
CHARACTER(LEN = 10) :: ch = 'abcdefghij'
REAL,DIMENSION(10) :: arr = 0.0

ASSOCIATE(aa => (/1.0,2.0,-1.0,-4.0,5.0,9.0,-2.0,7.0,-3.0,0.0/))
  WHERE(aa .LT. 0.0)
    arr = 1.0
  ELSEWHERE
    arr = 0.0
  END WHERE
  ASSOCIATE(bb => (/2.0,6.0,-1.0,-2.0,8.0,4.0,-5.0,12.0,-11.0,-6.0/) + aa)
    FORALL(i = 1:10,bb(i) .GT. 0.0)
      arr(i) = 1.1
    END FORALL
    ASSOCIATE(cc => MAXVAL(aa) * SUM(bb))
      SELECT CASE(CEILING(cc))
      CASE(189)
      ASSOCIATE(dd => INDEX(ch,'fgh') * 2)
        IF(dd .EQ. 12) arr = 1.0
      END ASSOCIATE
      END SELECT
    END ASSOCIATE
  END ASSOCIATE
END ASSOCIATE

IF(ALL(arr(1:10) .EQ. 1.0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
