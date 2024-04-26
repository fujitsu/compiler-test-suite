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

TYPE tt
  INTEGER :: i = 4
  REAL :: j = 5.0
  INTEGER,DIMENSION(3,3) :: arr = 3
END TYPE

TYPE ty2
  REAL :: rr2
  CONTAINS
  PROCEDURE,PASS(x) :: sub2
END TYPE

CONTAINS

SUBROUTINE sub2(x,y)
CLASS(ty2),INTENT(IN) :: x
REAL :: y
y = y + x%rr2
END SUBROUTINE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

REAL :: mm = 2.0
CLASS(t1),POINTER :: ptr
CLASS(t3),ALLOCATABLE :: acc
TYPE(t3),TARGET :: tgt
TYPE(tt) :: obj
TYPE(ty2) :: obj2
ALLOCATE(acc)

acc%r3 = 3.0
tgt%r3 = 10.0
ptr => tgt

ASSOCIATE(aa => obj2 , bb => acc , cc => ptr)
  aa%rr2 = obj%j
  CALL aa%sub2(mm)
  IF(bb%r3 .GT. 0.0) tgt%r3 = 0.0
  SELECT TYPE(cc)
    TYPE IS(t3)
      tgt%r3 = 1.0
  END SELECT
END ASSOCIATE

IF(tgt%r3 .EQ. 1.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
