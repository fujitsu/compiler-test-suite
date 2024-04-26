MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: r1 = 0.0
END TYPE

TYPE,EXTENDS(t1) :: t2
  REAL :: r2 = 0.0
END TYPE

TYPE,EXTENDS(t2) :: t3
  REAL :: r3 = 0.0
END TYPE

TYPE tt
  INTEGER :: i = 4
  REAL :: j = 5.0
  INTEGER,DIMENSION(3,3) :: arr = 3
END TYPE

TYPE ty1
  REAL :: rr1 = 2.0
  PROCEDURE(sub1),POINTER,NOPASS :: proc
END TYPE

CONTAINS

SUBROUTINE sub1(a,b)
TYPE(ty1),INTENT(OUT) :: a
REAL,INTENT(IN) :: b
a%rr1 = b + a%rr1
END SUBROUTINE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: a = 67,b = 7
REAL,DIMENSION(3:12) :: arr = (/0.0,1.2,5.0,-1.0,3.3,6.0,0.23,9.0,5.5,7.0/)
REAL :: xx = 3.0,yy = 1.0,zz = 4.0
CLASS(t1),POINTER :: ptr,ptr2
CLASS(t3),ALLOCATABLE :: acc,acc2
TYPE(t3),TARGET :: tgt
TYPE(tt) :: obj
TYPE(ty1) :: obj1
ALLOCATE(acc)

acc%r3 = 3.0
tgt%r3 = 10.0
ptr => tgt

ASSOCIATE(aa => obj1 , bb => arr , cc => ptr , dd => acc , ee => 10.0 , ff => MOD(a,b) , gg => xx+(yy*zz))
  aa%rr1 = obj%j
  aa%proc => sub1
  CALL aa%proc(aa,ee)
  ptr2 => cc
  ALLOCATE(acc2,SOURCE = dd)
  WHERE(bb .GT. ff)
    bb = 1.1
  ELSE WHERE
    bb = 0.0
  END WHERE
  IF(gg .GT. 10.0) THEN
    aa%rr1 = 0.0
  ELSE IF(gg .EQ. 7.0) THEN
    aa%rr1 = 1.0
  ELSE
    aa%rr1 = -1.0
  END IF
  IF(ASSOCIATED(ptr2)) NULLIFY(ptr2)
END ASSOCIATE

IF(obj1%rr1 .EQ. 1.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
