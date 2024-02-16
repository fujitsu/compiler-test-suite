PROGRAM main
IMPLICIT NONE

INTEGER,PARAMETER :: dp = SELECTED_REAL_KIND(2,3)
REAL(KIND = dp) :: dist1 , dist2 , res

dist1 = 12.345
dist2 = 14.6789

res = fun(dist1,dist2)

IF(res .GT. 20.0000) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun(d1,d2)
IMPLICIT NONE
REAL(KIND = dp) :: d1,d2,fun
ASSOCIATE(aa => d1 + d2)
  IF(aa .GT. 20.0000) THEN
    fun = aa
  ELSE
    fun = 0.0
  END IF
END ASSOCIATE
END FUNCTION

END PROGRAM
