MODULE mod1
IMPLICIT NONE
TYPE base_type
  REAL :: r1 = 0.0
END TYPE

TYPE,EXTENDS(base_type) :: extd_type
  REAL :: r2 = 0.0
END TYPE

INTERFACE OPERATOR(.plus.)
  MODULE PROCEDURE addition
END INTERFACE 

CONTAINS

FUNCTION addition(arg1,arg2)
CLASS(extd_type),INTENT(IN) :: arg2
REAL,INTENT(IN) :: arg1
CLASS(extd_type),ALLOCATABLE :: addition
ALLOCATE(addition)
addition%r2 = arg2%r2 + arg1
END FUNCTION
END MODULE

USE mod1
IMPLICIT NONE

CLASS(extd_type),ALLOCATABLE :: obj
ALLOCATE(obj)
obj%r2 = 10.00

SELECT TYPE(aa => 12.00 .plus. obj)
TYPE IS(extd_type)
  IF(aa%r2 .EQ. 22.00) THEN
    PRINT*,'PASS'
  ELSE
    PRINT*,'FAIL'
  END IF
END SELECT
END
