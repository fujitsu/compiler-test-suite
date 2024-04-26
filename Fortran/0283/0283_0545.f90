MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  REAL :: r2
END TYPE

TYPE,EXTENDS(t2) :: t3
  REAL :: r3 = 1.0
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

REAL :: mm = 2.0,a = -2.0 , b = 3.0
CLASS(t1),POINTER :: ptr,ptr2
CLASS(t3),ALLOCATABLE :: acc,acc2
TYPE(t3),TARGET :: tgt
ALLOCATE(acc)

acc%r3 = 4.0
tgt%r3 = 10.0
ptr => tgt

ASSOCIATE(aa => ptr , bb => acc , cc => fun_1(mm) , dd => SIGN(a,b))
  ptr2 => aa
  ALLOCATE(acc2 , SOURCE = bb)
  SELECT TYPE(ptr2)
    TYPE IS(t3)
    acc2%r3 = 1.0   
  END SELECT 
  IF(cc .GT. 0.0) NULLIFY(ptr2)
  IF(dd) 10,20,20
  10 PRINT*,101
  20 PRINT*,'pass'   
END ASSOCIATE

CONTAINS

REAL FUNCTION fun_1(dd1)
REAL :: dd1
fun_1 = dd1
END FUNCTION

END PROGRAM
