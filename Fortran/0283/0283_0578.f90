MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER,DIMENSION(2:11) :: tar = 12
END TYPE

INTERFACE
FUNCTION fun_1(dd1)
IMPLICIT NONE
INTEGER,DIMENSION(10) :: dd1,fun_1
END FUNCTION
END INTERFACE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: res
INTEGER,DIMENSION(2:11) :: arr1 = 5
TYPE(ty) :: obj

ASSOCIATE(aa => fun_1(arr1) * obj%tar)
  IF(ALL(aa(: :2) .EQ. 120)) THEN
    ASSOCIATE(bb => aa(: : 2) + (/1,2,3,4,5/))
      SELECT CASE(bb(3))
        CASE(123)
        ASSOCIATE(cc => (/2,5,7,3,5/) * 3)
          IF(cc(3) .EQ. 21) THEN
            res = 1
          ELSE
            res = 0
          END IF
        END ASSOCIATE
      END SELECT
    END ASSOCIATE
  ELSE
    ASSOCIATE(aa => 2)
      res = aa
    END ASSOCIATE
  END IF
END ASSOCIATE

IF(res .EQ. 1) THEN 
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM

FUNCTION fun_1(dd1)
IMPLICIT NONE
INTEGER,DIMENSION(10) :: dd1,fun_1
fun_1 = dd1 * 2
END FUNCTION
