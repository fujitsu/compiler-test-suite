MODULE mod1
IMPLICIT NONE

COMPLEX(KIND = 8) :: cmp1 = (23.40,-23.10)
COMPLEX(KIND = 8) :: cmp2 = (45.20,-11.10)

INTERFACE
FUNCTION fun_1(dd1,dd2)
IMPLICIT NONE
COMPLEX(KIND =8) :: dd1,dd2,fun_1
END FUNCTION

FUNCTION fun_2()
IMPLICIT NONE
COMPLEX(KIND = 8) :: fun_2
END FUNCTION
END INTERFACE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

ASSOCIATE(aa => fun_1(cmp1,cmp2) + fun_2())
  IF(INT(AIMAG(aa)) .EQ. -15) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM 

FUNCTION fun_1(dd1,dd2)
IMPLICIT NONE
COMPLEX(KIND = 8) :: dd1,dd2,fun_1
fun_1 = dd1 + dd2
END FUNCTION

FUNCTION fun_2()
IMPLICIT NONE
COMPLEX(KIND = 8) :: fun_2
fun_2 = (15.60,18.90)
END FUNCTION
