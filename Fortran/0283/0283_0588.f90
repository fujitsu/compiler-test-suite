MODULE mod1
IMPLICIT NONE

CHARACTER(LEN = 20),DIMENSION(10) :: charr
CHARACTER(LEN = 5) :: charr2

TYPE typ
  CHARACTER(LEN = 10) :: ch
  CONTAINS 
  PROCEDURE,PASS(dd1) :: fun_ty
END TYPE

INTERFACE OPERATOR (.add.)
  MODULE PROCEDURE addit
END INTERFACE

CONTAINS

FUNCTION fun_ty(dd1,dd2)
IMPLICIT NONE
CLASS(typ),INTENT(IN) :: dd1
CHARACTER(LEN = 2),INTENT(IN) :: dd2
CHARACTER(LEN = 20) :: fun_ty
fun_ty = TRIM(dd1%ch) // TRIM(dd2)
END FUNCTION

FUNCTION addit(dd1,dd2)
IMPLICIT NONE
INTEGER :: i
CHARACTER(LEN = 20),DIMENSION(10),INTENT(IN) :: dd1
CHARACTER(LEN = 5),INTENT(IN) :: dd2
CHARACTER(LEN = 20),DIMENSION(10) :: addit
DO i = 1,10
  addit(i) = TRIM(dd1(i)) // dd2
END DO
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: res = 0
TYPE(typ) :: obj
charr = 'aaaaaaaaaa'
charr2 = 'bbbbb'
obj%ch = 'ssssssssss'

ASSOCIATE(aa => charr .add. charr2 , bb => obj%fun_ty('tt'))
  IF(ALL(aa(1::2)(5:12) .EQ. 'aaaaaabb')) THEN
  ASSOCIATE(aa => bb)
    res = 1
  END ASSOCIATE
  ELSE
    res = 0
  END IF
  res = res  + 1
END ASSOCIATE

IF(res .EQ. 2) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
