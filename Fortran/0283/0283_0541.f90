MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: inn = 10,j = 0
INTEGER,DIMENSION(3:12) :: arr = 0
TYPE(t1) :: obj

ASSOCIATE(aa => 6 , bb => inn , cc => obj , dd => arr(5:10))
  CALL sub(cc)
  DO j = 1,aa,cc%i
    dd(j) = 1
  END DO
  SELECT CASE(bb)
  CASE (10)
    cc%i = 3
  END SELECT
  IF(dd(4) .EQ. 1) THEN
    cc%i = 5
  ELSE IF(dd(4) .EQ. 0) THEN
    cc%i = 1
  ELSE
    cc%i = 0
  END IF
END ASSOCIATE

IF(obj%i .EQ. 1) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

SUBROUTINE sub(ob)
TYPE(t1) :: ob
ob%i = 2
END SUBROUTINE

END PROGRAM
