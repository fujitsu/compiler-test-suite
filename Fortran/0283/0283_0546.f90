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

CLASS(t1),POINTER :: ptr,ptr2
CLASS(t3),ALLOCATABLE :: acc
TYPE(t3),TARGET :: tgt
TYPE(tt) :: obj
TYPE(ty1) :: obj1
ALLOCATE(acc)

acc%r3 = 3.0
tgt%r3 = 10.0
ptr => tgt

ASSOCIATE(aa => obj1 , bb => acc , cc => 10.0 , dd => ptr , ee => acc%r3 +tgt%r3)
  aa%rr1 = obj%j
  aa%proc => sub1
  CALL aa%proc(aa,cc)
  ptr2 => dd
  SELECT TYPE(bb)
    TYPE IS(t3)
    aa%rr1 = 1.0
  END SELECT    
  IF(ASSOCIATED(ptr2)) NULLIFY(ptr2)
  aa%rr1 = fun_1(ee)
END ASSOCIATE

IF(obj1%rr1 .EQ. 13.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

REAL FUNCTION fun_1(dd1)
REAL :: dd1
fun_1 = dd1
END FUNCTION

END PROGRAM
