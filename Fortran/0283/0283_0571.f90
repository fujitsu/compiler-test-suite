MODULE mod1
IMPLICIT NONE

TYPE ty
  REAL :: r1
  REAL,DIMENSION(2,4) :: ar1
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

REAL,DIMENSION(5) :: arr1 = (/1.0,2.0,3.0,4.0,5.0/),arr2 = (/2.0,8.0,3.0,6.0,1.0/)

ASSOCIATE(aa => DOT_PRODUCT(arr1,arr2) * 3.0)
  ASSOCIATE(bb => aa + SUM(arr1))
    ASSOCIATE(cc => aa + bb + (/1.0,2.0,7.0,5.0,3.0/))
      IF(cc(3) .EQ. 358.0) then
        PRINT*,'pass'
      ELSE
        PRINT*,101
      END IF
    END ASSOCIATE
  END ASSOCIATE
END ASSOCIATE

END PROGRAM
