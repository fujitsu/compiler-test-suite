MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  REAL :: r2
END TYPE

TYPE,EXTENDS(t2) :: t3
  REAL :: r3
END TYPE

INTERFACE OPERATOR(.plus.)
  MODULE PROCEDURE addit
END INTERFACE

CONTAINS

FUNCTION addit(d1,d2)
IMPLICIT NONE
CLASS(t2),DIMENSION(:),INTENT(IN) :: d1
REAL,DIMENSION(5),INTENT(IN) :: d2
CLASS(t2),DIMENSION(:),ALLOCATABLE :: addit
ALLOCATE(addit(5))
addit%r2 = d1%r2 + d2
END FUNCTION

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

CLASs(t2),DIMENSION(:),ALLOCATABLE :: acc1
ALLOCATE(acc1(5))
acc1%r2 = 10.0

SELECT TYPE(aa => acc1 .plus. (/1.0,2.0,3.0,4.0,5.0/))
  CLASS IS(t2)
  IF(aa(3)%r2 .EQ. 13.00) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
  CLASS IS(t3)
    PRINT*,103  
END SELECT

END PROGRAM