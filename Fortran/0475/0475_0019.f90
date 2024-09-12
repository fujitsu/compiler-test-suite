MODULE mod1
IMPLICIT NONE

INTEGER,PARAMETER :: xx = 2,yy = 4
TYPE ty
  INTEGER,allocatable :: arr(:)
  CHARACTER(LEN = :),allocatable :: ch
  INTEGER :: jj = 6
  COMPLEX :: cpx
  INTEGER :: ii = 2
END TYPE
TYPE,EXTENDS(ty) ::  ty2
  TYPE(ty),allocatable :: cmp
END TYPE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(ty),allocatable :: obj1
CLASS(ty2),POINTER :: obj2

ALLOCATE(ty2 :: obj2)

obj2%jj = 4

obj1 = obj2

SELECT TYPE(obj1)
  TYPE IS(ty2)
    IF(obj1%jj .EQ. 4) THEN 
      PRINT*,"pass"
    ELSE
      PRINT*,"ERROR"
    END IF
  class default
  print*,"121"
END SELECT

END PROGRAM
