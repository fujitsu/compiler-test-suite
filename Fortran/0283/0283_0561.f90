MODULE mod1
IMPLICIT NONE

TYPE ty
  REAL(KIND = 4) :: rr
  CONTAINS 
  PROCEDURE,PASS(dd1) :: fun_1
END TYPE

CONTAINS

FUNCTION fun_1(dd1,dd2)
IMPLICIT NONE
CLASS(ty),INTENT(IN) :: dd1
REAL(KIND = 4),INTENT(IN) :: dd2
REAL(KIND = 4) :: fun_1
fun_1 = dd2 + dd1%rr
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

REAL(KIND = 4),DIMENSION(5) :: arr = 0.0
REAL(KIND = 4),POINTER :: ptr
REAL(KIND = 4) :: num = 20.0
TYPE(ty),ALLOCATABLE :: obj
ALLOCATE(obj,ptr)
obj%rr = 10.0
ptr = 30.0

ASSOCIATE(aa => obj%fun_1(num) * 4.0 , bb => (/20.0,30.0,50.0,60.0,90.0/) + (/40.0,20.0,10.0,70.0,30.0/), &
          cc => 12.0 , dd => ptr)
  WHERE(bb .GT. aa)
    arr = 1.0
  ELSE WHERE
    arr = 0.0
  END WHERE
  IF(dd .GT. cc) THEN
    arr = cc
  ELSE
    arr = 0.0
  END IF
END ASSOCIATE      

IF(ALL(arr(1:5) .EQ. 12.0)) THEN
  arr = 0.0
ELSE
  arr = 1.0
END IF

IF(ALL(arr(1:5) .EQ. 0.0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
