MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: n1
END TYPE

TYPE,EXTENDS(t1) :: t2
  INTEGER :: n2
END TYPE

TYPE,EXTENDS(t2) :: t3
  INTEGER :: n3
END TYPE

INTERFACE OPERATOR(.mult.)
  MODULE PROCEDURE multip
END INTERFACE

CONTAINS

FUNCTION multip(dd1,dd2)
IMPLICIT NONE
CLASS(t2),DIMENSION(:,:,:,:,:),INTENT(IN) :: dd1
INTEGER,INTENT(IN) :: dd2
CLASS(t2),DIMENSION(:,:,:,:,:),ALLOCATABLE :: multip
ALLOCATE(multip(5,6,4,5,3))
multip%n2 = dd1%n2 * dd2
END FUNCTION

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(t2),DIMENSION(:,:,:,:,:),ALLOCATABLE :: acc1
ALLOCATE(acc1(5,6,4,5,3))

SELECT TYPE(aa => fun_2(acc1) .mult. 2)
  CLASS IS(t3)
    PRINT*,103
  CLASS IS(t2)
    IF(aa(3,3,3,3,3)%n2 .EQ. 40) THEN
      PRINT*,'pass'
    ELSE
      PRINT*,101
    END IF
  CLASS DEFAULT
    PRINT*,102
END SELECT

CONTAINS

FUNCTION fun_2(dd1)
IMPLICIT NONE
CLASS(t2),DIMENSION(:,:,:,:,:) :: dd1
CLASS(t2),DIMENSION(:,:,:,:,:),ALLOCATABLE :: fun_2
ALLOCATE(fun_2(5,6,4,5,3))
dd1%n2 = 20
fun_2%n2 = dd1%n2
END FUNCTION

END PROGRAM

