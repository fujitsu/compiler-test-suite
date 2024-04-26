MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL(KIND = 4) :: xx 
  REAL(KIND = 4) :: yy(2,3) 
END TYPE

INTERFACE
FUNCTION fun_1(dy1,dy2)
IMPLICIT NONE
REAL(KIND = 4) :: dy1,dy2,fun_1,fun_2
END FUNCTION

FUNCTION fun_2(dy1)
END FUNCTION
END INTERFACE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

REAL(KIND = 4) :: res,num1 = 10.0 ,num2 = 30.0
REAL(KIND = 4),DIMENSION(3,4) :: arr = 5.0
TYPE(t1),ALLOCATABLE :: obj
ALLOCATE(obj)
obj%xx = 3.0
obj%yy = 2.0

ASSOCIATE(aa => fun_2(num1))
  res = fun_1(aa,num2)
  ASSOCIATE(bb => TRANSPOSE(arr))
    IF(bb(4,3) .EQ. 5.0) THEN
      res =  1.0
    ELSE
      res = - 1.0
    END IF
    ASSOCIATE(cc => aa + (obj%xx * obj%yy(1,1)))
      SELECT CASE(CEILING(cc))
        CASE(16)
          res = res + 1.0
      END SELECT
    END ASSOCIATE
  END ASSOCIATE
END ASSOCIATE

IF(res .EQ. 2.0) THEN
   PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM

FUNCTION fun_1(dy1,dy2)
IMPLICIT NONE
REAL(KIND = 4) :: dy1,dy2,fun_1,fun_2
fun_1 = dy1 * dy2
RETURN
ENTRY fun_2(dy1)
fun_2 = dy1
RETURN
END FUNCTION
