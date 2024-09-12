MODULE mod1
TYPE base_type
  CHARACTER(LEN = 2) :: ch
END TYPE
TYPE,EXTENDS(base_type) :: extd_type
  CHARACTER(LEN = 10) :: ch2
END TYPE
END MODULE

USE mod1
IMPLICIT NONE
CLASS(extd_type),ALLOCATABLE :: acc
ALLOCATE(acc)
acc%ch2 = 'xxaaxxaaxx'

ASSOCIATE(aa => acc)
  CALL sub(aa%ch2(3:8)) 
END ASSOCIATE
IF(acc%ch2 .EQ. 'xxxxxxxxxx') THEN
  PRINT*,'PASS'
ELSE
  PRINT*,'FAIL'
END IF
CONTAINS
SUBROUTINE sub(dd1)
IMPLICIT NONE
CHARACTER(LEN = 6) :: dd1
dd1 = 'xxxxxx'
END SUBROUTINE
END
