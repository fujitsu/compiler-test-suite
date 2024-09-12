MODULE mod1
IMPLICIT NONE
TYPE base_type
  REAL :: r1 =0.0
END TYPE
TYPE,EXTENDS(base_type) :: extd_type
  REAL :: r2 = 0.0
END TYPE
END MODULE

USE mod1
IMPLICIT NONE
CLASS(base_type),DIMENSION(:),POINTER :: ptr
CLASS(extd_type),DIMENSION(:),ALLOCATABLE,TARGET :: acc
ALLOCATE(acc(10))
acc%r2 = 10.00
ptr => acc

SELECT TYPE(aa => ptr([2,8,6,9]))
  TYPE IS(extd_type)
  acc%r1 = 20.0
END SELECT

IF(acc(1)%r1 .EQ. 20.0) THEN
  PRINT*,'PASS'
ELSE
  PRINT*,'FAIL'
END IF
END 


