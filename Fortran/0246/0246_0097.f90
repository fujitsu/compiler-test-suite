MODULE mod1
TYPE ty
  INTEGER::test_var=0
END TYPE

INTEGER::counter=0

INTERFACE
PURE SUBROUTINE sub(dmy)
  INTEGER,INTENT(IN)::dmy
END SUBROUTINE
END INTERFACE

CONTAINS
SUBROUTINE des1(dmy)
  TYPE(ty)::dmy
  IF(dmy%test_var .EQ. 1 .OR. dmy%test_var .EQ. 3) counter=counter+1
  IF(dmy%test_var .EQ. 2 .OR. dmy%test_var .EQ. 4) counter=counter+2
  IF(dmy%test_var .EQ. 4) THEN
    IF(counter .EQ. 6) THEN
      PRINT*,'PASS'
    ELSE
      PRINT*,'FAIL',counter
    ENDIF
  ENDIF
END SUBROUTINE
END MODULE

PROGRAM MAIN
USE mod1
IMPLICIT NONE
INTEGER::index_var1=100
DO CONCURRENT(index_var1=1:4)
  CALL sub(index_var1)
END DO
IF(index_var1 .NE. 100) PRINT*,'FAIL2'
      PRINT*,'PASS'
END PROGRAM

PURE SUBROUTINE sub(dmy)
  USE mod1
  INTEGER,INTENT(IN)::dmy
  TYPE(ty)::obj
  IF(obj%test_var .EQ. 0) obj%test_var=dmy
END SUBROUTINE
