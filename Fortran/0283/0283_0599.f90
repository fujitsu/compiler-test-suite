MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: n1
END TYPE

TYPE,EXTENDS(t1) :: t2
  INTEGER :: n2
END TYPE

INTERFACE OPERATOR(*)
  MODULE PROCEDURE multip
END INTERFACE

CONTAINS

FUNCTION multip (dy1,dy2)
IMPLICIT NONE
CLASS(t2),DIMENSION(:),INTENT(IN) :: dy1
INTEGER,INTENT(IN) :: dy2
CLASS(t2),DIMENSION(:),ALLOCATABLE :: multip
ALLOCATE(multip(10))
multip%n2 = dy1%n2 * dy2
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(t2),DIMENSION(:),ALLOCATABLE :: acc1,acc2
ALLOCATE(acc1(10),acc2(10))
acc1%n2 = 10
acc2%n2 = 20

ASSOCIATE(aa => fun_2(acc1,acc2) * 2)
  ASSOCIATE(bb => aa)
    SELECT CASE(bb(5)%n2)
    CASE(60)
    PRINT*,'pass'
    END SELECT
  END ASSOCIATE
END ASSOCIATE

CONTAINS

FUNCTION fun_2(dd1,dd2)
IMPLICIT NONE
CLASS(t2),DIMENSION(:),ALLOCATABLE :: dd1,dd2,fun_2
ALLOCATE(fun_2(10))
fun_2%n2 = dd1%n2 + dd2%n2 
END FUNCTION

END PROGRAM
