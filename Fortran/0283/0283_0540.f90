MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: tt
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: xx = 2,yy = 4
TYPE(t1) :: obj
obj%tt = 9

ASSOCIATE(aa => fun_1(xx,yy) , bb => 20 , cc => obj%tt)
  SELECT CASE(aa)
  CASE (6)
    cc = cc + 1
  END SELECT
  IF(bb) 10,20,20
  10 cc = 0
  20 cc = cc + 10
  CALL sub(cc)
END ASSOCIATE   

IF(obj%tt .EQ. 10) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

SUBROUTINE sub(dd)
INTEGER :: dd
dd = dd - 10
END SUBROUTINE

INTEGER FUNCTION fun_1(d1,d2)
INTEGER :: d1,d2
fun_1 = d1 + d2
END FUNCTION

END PROGRAM
