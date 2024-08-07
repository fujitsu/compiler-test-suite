MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  REAL :: r2
END TYPE

INTERFACE OPERATOR ( * )
  MODULE PROCEDURE multip
END INTERFACE

CONTAINS

FUNCTION multip(dd1,dd2)
IMPLICIT NONE
CLASS(t2),INTENT(IN) :: dd1 
CLASS(t2),ALLOCATABLE :: multip 
CLASS(t1),INTENT(IN) :: dd2
ALLOCATE(multip)
multip%r2 = dd1%r2 * dd2%r1
END FUNCTION

END MODULE 

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(t2) :: obj
CLASS(t2),ALLOCATABLE :: allc
CLASS(t1),POINTER :: ptr

ALLOCATE(allc,ptr)
allc%r2 = 2.0
ptr%r1 = 3.0

obj = fun(allc , ptr)

IF(obj%r2 .EQ. 6.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun(dd1,dd2)
IMPLICIT NONE
CLASS(t2),ALLOCATABLE :: dd1,fun
CLASS(t1),POINTER :: dd2
ASSOCIATE(aa => dd1 * dd2)
  ALLOCATE(fun , SOURCE = aa)
END ASSOCIATE
END FUNCTION

END PROGRAM
