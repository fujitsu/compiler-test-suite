MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  REAL :: r2
END TYPE

TYPE,EXTENDS(t2) :: t3
  REAL :: r3 = 0.0
END TYPE

TYPE tt
  INTEGER :: i = 4
  REAL :: j = 5.0
  REAL,DIMENSION(3,3) :: arr = 3.0
END TYPE

TYPE ty1
  REAL :: rr1 = 0.0
  PROCEDURE(sub1),POINTER,NOPASS :: proc
END TYPE

CONTAINS

SUBROUTINE sub1(a,b)
TYPE(ty1),INTENT(IN) :: a
TYPE(tt),INTENT(INOUT) :: b
b%j = b%j + a%rr1
END SUBROUTINE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: i
REAL,DIMENSION(3:12) :: arr = 0.0
INTEGER,DIMENSION(5:9) :: pro = (/2,3,7,5,1/)
CLASS(t3),ALLOCATABLE :: acc,acc2
TYPE(tt) :: obj
TYPE(ty1) :: obj1
ALLOCATE(acc)

acc%r3 = 3.0

ASSOCIATE(aa => obj1 , bb => obj, cc => PRODUCT(pro) , dd => acc , ee => arr , ff => 12)
  aa%rr1 = bb%arr(3,1)
  aa%proc => sub1
  CALL aa%proc(aa,bb)
  SELECT CASE(cc)
  CASE(210)
    bb%j = bb%j + aa%rr1
  END SELECT   
  SELECT TYPE(dd)
    TYPE IS(t3)
      bb%j = 1.1                     
  END SELECT  
  DO i = 3,ff,2
    ee(i) = bb%j
  END DO
  ALLOCATE(acc2 , SOURCE = acc)
  WHERE(ee .EQ. 0.0)
    ee = bb%j + acc2%r3
  ELSEWHERE
    ee = 0.0
  END WHERE
END ASSOCIATE

IF(ALL(arr(4:12:2) .EQ. 4.1)) THEN
  arr = 0.0
ELSE
  arr = 1.0
END IF

IF(ALL(arr(3:12) .EQ. 0.0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
