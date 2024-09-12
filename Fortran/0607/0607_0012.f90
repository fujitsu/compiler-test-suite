MODULE mod1
TYPE ty
INTEGER :: num
INTEGER :: num1(4)
CONTAINS
PROCEDURE,PASS(a) :: sub
END TYPE
CONTAINS
FUNCTION sub(a,b)
CLASS(ty),INTENT(INOUT) :: a
INTEGER,INTENT(OUT) :: b
b = b + a%num
sub = b
END FUNCTION
END MODULE

USE mod1
IMPLICIT NONE

INTEGER :: n = 4, m = 0
TYPE(ty) :: obj,obj1
ASSOCIATE(bb => obj, aa=>obj1)
  aa%num1(4) = 4
  aa%num = 4
  bb%num1(4) = 10
  bb%num = 10
  IF(bb%num1(aa%num1(n)+ m) .EQ. 10) THEN
    PRINT*,'PASS'
  ELSE
    PRINT*,'FAIL'
  END IF
END ASSOCIATE
END
