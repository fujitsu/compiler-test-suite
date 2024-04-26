PROGRAM main
IMPLICIT NONE

REAL,DIMENSION(:),POINTER :: ptr,ptr2
ALLOCATE(ptr(3:8),ptr2(3:8))

ptr = (/1.0,-2.0,3.0,-4.0,5.0,-6.0/)

ASSOCIATE(aa => ptr)
  WHERE(aa .LT. 0.0)
    ptr2 = 0.0
  ELSE WHERE
    ptr2 = 1.1
  END WHERE
END ASSOCIATE

IF(ALL(ptr2(4:8:2) .EQ. 0.0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
