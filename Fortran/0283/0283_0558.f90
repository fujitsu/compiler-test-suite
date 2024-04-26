MODULE mod1
IMPLICIT NONE

TYPE t1
  SEQUENCE 
  INTEGER :: i
  REAL :: r
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(t1) :: obj1,obj2
COMMON /a/obj1,obj2

obj1 = t1(1,1.0)
obj2 = t1(2,2.0)

ASSOCIATE(aa => obj1 , bb => obj2)
  IF(aa%i .EQ. 1 .OR. bb%r .EQ. 2.0) THEN
    CALL sub()
  ELSE
    PRINT*,101
  END IF

  IF(aa%i .EQ. 4 .OR. bb%r .EQ. 3.0) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,102
  END IF
END ASSOCIATE

END PROGRAM

SUBROUTINE sub()
USE mod1
IMPLICIT NONE
TYPE(t1) :: obj1,obj2
COMMON /a/obj2,obj1
obj1 = t1(3,3.0)
obj2 = t1(4,4.0)
END SUBROUTINE
