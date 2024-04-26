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
CLASS(t2),DIMENSION(:),INTENT(IN) :: dd1 
CLASS(t1),DIMENSION(:),ALLOCATABLE :: multip 
CLASS(t1),DIMENSION(:),INTENT(IN) :: dd2
ALLOCATE(t2::multip(1:10))
select type(multip)
type is(t2)
 multip%r2 = dd1%r2 * dd2%r1
end select
END FUNCTION

END MODULE 

PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(t2),DIMENSION(:),ALLOCATABLE :: allc
CLASS(t1),DIMENSION(:),POINTER :: ptr

ALLOCATE(allc(1:10),ptr(1:10))
allc%r2 = 2.0
ptr%r1 = 3.0

ASSOCIATE(aa => fun(allc) * ptr)

select type(aa)
type is(t2)
  IF(aa(5)%r2 .EQ. 6.0) THEN
     PRINT*,'pass'
  ELSE
     PRINT*,101
  END IF
end select
if(sizeof(aa)/=80) print*,103,sizeof(aa)
END ASSOCIATE

CONTAINS

FUNCTION fun(dd1)
IMPLICIT NONE
CLASS(t2),DIMENSION(:),ALLOCATABLE :: dd1,fun
ALLOCATE(fun(1:10))
fun%r2 = dd1%r2
END FUNCTION

END PROGRAM
