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
CLASS(ty2),INTENT(INOUT) :: x
REAL,INTENT(IN) :: y
x%rr2 = y + x%rr2
END SUBROUTINE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

REAL :: qq = 10.0,ww = -10.0,zz = 2.0,yy = 5.0,xx = 0.0
REAL,DIMENSION(4:13) :: arr = (/3.0,2.0,-1.0,0.0,-3.0,4.0,-5.0,10.0,-10.0,1.0/)
CLASS(t1),POINTER :: ptr
CLASS(t3),ALLOCATABLE :: acc
TYPE(t3),TARGET :: tgt
TYPE(tt) :: obj
TYPE(ty2) :: obj2
ALLOCATE(acc)

acc%r3 = 3.0
tgt%r3 = 10.0
ptr => tgt

ASSOCIATE(aa => obj2 , bb => acc , cc => MAX(qq,ww,zz,yy,xx), dd => arr , ee => ptr)
  aa%rr2 = obj%j
  CALL aa%sub2(cc)
  WHERE(dd .GT. 0.0)
    dd = 1.1
  ELSEWHERE
    dd = 0.0
  END WHERE
  DO WHILE(bb%r3 > 0.0)
    bb%r3 = bb%r3 - 1.0
  END DO
  SELECT TYPE(ee)
    TYPE IS(t3)
    dd = bb%r3
  END SELECT    
END ASSOCIATE

IF(ALL(arr(4:13) .EQ. 0.0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
