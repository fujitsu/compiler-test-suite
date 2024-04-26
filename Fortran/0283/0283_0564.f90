MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL(KIND = 4) :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  REAL(KIND = 4) :: r2
END TYPE

TYPE,EXTENDS(t2) :: t3
  REAL(KIND = 4) :: r3
END TYPE

TYPE tt
  INTEGER :: i = 4
  REAL(KIND = 4) :: j = 5.0
  INTEGER,DIMENSION(3,3) :: arr = 3
END TYPE

TYPE ty1
  REAL(KIND = 4) :: rr1 = 2.0
  PROCEDURE(sub1),POINTER,NOPASS :: proc
END TYPE

INTERFACE OPERATOR( .plus. )
  MODULE PROCEDURE addit
END INTERFACE

CONTAINS

SUBROUTINE sub1(a,b)
TYPE(ty1),INTENT(OUT) :: a
REAL(KIND = 4),INTENT(IN) :: b
a%rr1 = b + a%rr1
END SUBROUTINE

FUNCTION addit(dd1,dd2)
IMPLICIT NONE
CLASS(t3),DIMENSION(:),INTENT(IN) :: dd1
TYPE(t3),TARGET,INTENT(IN) :: dd2
CLASS(t3),DIMENSION(:),ALLOCATABLE :: addit
ALLOCATE(addit(5))
addit%r3 = dd1%r3 + dd2%r3
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

REAL(KIND = 4) :: res
CLASS(t1),POINTER :: ptr,ptr2
CLASS(t3),DIMENSION(:),ALLOCATABLE :: acc
TYPE(t3),TARGET :: tgt
TYPE(tt) :: obj
TYPE(ty1),DIMENSION(5) :: obj1
ALLOCATE(acc(5))

acc%r3 = 3.0
tgt%r3 = 10.0
ptr => tgt

ASSOCIATE(aa => obj1 , bb => acc , cc => 10.0 , dd => ptr , ee => acc .plus. tgt)
  aa%rr1 = obj%j
  aa(3)%proc => sub1
  CALL aa(3)%proc(aa(3),cc)
  ptr2 => dd
  SELECT TYPE(bb)
    TYPE IS(t3)
    aa%rr1 = 1.0
  END SELECT   
  ptr2 => dd 
  IF(ASSOCIATED(ptr2)) NULLIFY(ptr2)
  IF(ee(3)%r3 .EQ. 13.0) THEN
    res = 1.0
  ELSE
    res = 0.0
  END IF
END ASSOCIATE

IF(res .EQ. 1.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun_1(dd1)
CLASS(t3),DIMENSION(:),ALLOCATABLE :: dd1,fun_1
fun_1%r3 = dd1%r3
END FUNCTION

END PROGRAM
