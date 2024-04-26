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

TYPE ty1
  REAL :: rr1
  PROCEDURE(sub1),POINTER,NOPASS :: proc
END TYPE

CONTAINS

SUBROUTINE sub1(a,b)
TYPE(ty1),INTENT(IN) :: a
REAL :: b
b = b + a%rr1
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
TYPE(ty1) :: obj1

ALLOCATE(acc)

acc%r3 = 3.0
tgt%r3 = 10.0
ptr => tgt

ASSOCIATE(aa => obj1 , bb => acc , cc => tgt , dd => ptr)
  aa%rr1 = obj%j
  aa%proc => sub1
  CALL aa%proc(aa,mm)
  cc%r3 = mm + bb%r3
  SELECT TYPE(dd)
    TYPE IS(t3)
    cc%r3 = 0.0
  END SELECT    
END ASSOCIATE

IF(tgt%r3 .EQ. 0.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
