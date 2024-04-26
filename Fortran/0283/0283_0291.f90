PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(5) :: arr = 0
INTEGER,DIMENSION(3) :: rr = (/2,3,4/)
INTEGER :: i,dd,fun_st

fun_st(dd) = dd * 2 

ASSOCIATE(aa => (/-1,1,-1,1,-1/) + fun_st(rr(2)))
  FORALL(i = 1:5,aa(i) .GT. 5)
    arr = 1+i
    arr = arr-i
  END FORALL
END ASSOCIATE

IF(ALL(arr(2:4:2) .EQ. 1)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
