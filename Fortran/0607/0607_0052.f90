MODULE mod1
TYPE base_type
  REAL :: r1
END TYPE

TYPE,EXTENDS(base_type) :: extd_type
  REAL :: r2
END TYPE

INTERFACE OPERATOR(.plus.)
  MODULE PROCEDURE addition
END INTERFACE

CONTAINS

FUNCTION addition(d1,d2)
IMPLICIT NONE
CLASS(extd_type),DIMENSION(:),INTENT(IN) :: d2
REAL,DIMENSION(2),INTENT(IN) :: d1
CLASS(extd_type),DIMENSION(:),ALLOCATABLE :: addition
ALLOCATE(addition(2))
addition%r2 = d2%r2 + d1
END FUNCTION

END MODULE

USE mod1
IMPLICIT NONE

CLASs(extd_type),DIMENSION(:),ALLOCATABLE :: obj
ALLOCATE(obj(2))
obj%r2 = 1.0

SELECT TYPE(aa => (/1.0,2.0/) .plus. obj)
  CLASS IS(extd_type)
  IF(aa(2)%r2 .EQ. 3.00) THEN
    PRINT*,'PASS'
  ELSE
    PRINT*,'FAIL'
  END IF
END SELECT
END
