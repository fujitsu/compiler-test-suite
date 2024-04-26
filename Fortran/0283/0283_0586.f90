MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: n1
END TYPE

TYPE,EXTENDS(t1) :: t2
  INTEGER :: n2
END TYPE

TYPE typ
  INTEGER :: rr
  CONTAINS
  PROCEDURE,PASS(dy1) :: fun_ty
END TYPE

TYPE tpp
  INTEGER :: rp
  PROCEDURE(fun_ppc),POINTER,PASS(dy1) :: prc
END TYPE

INTERFACE OPERATOR ( .plus. )
  MODULE PROCEDURE addit
END INTERFACE

CONTAINS

FUNCTION fun_ty(dy1,dy2)
IMPLICIT NONE
CLASS(typ),INTENT(IN) :: dy1
INTEGER,INTENT(IN) :: dy2
CLASS(typ),ALLOCATABLE :: fun_ty
ALLOCATE(fun_ty)
fun_ty%rr = dy1%rr + dy2
END FUNCTION

FUNCTION fun_ppc(dy1,dy2)
IMPLICIT NONE
CLASS(tpp),INTENT(IN) :: dy1
INTEGER,INTENT(IN) :: dy2
CLASS(tpp),ALLOCATABLE :: fun_ppc
ALLOCATE(fun_ppc)
fun_ppc%rp = dy1%rp + dy2
END FUNCTION

FUNCTION addit(dd1,dd2)
IMPLICIT NONE
CLASS(t2),DIMENSION(:),INTENT(IN) :: dd1
CLASS(t1),DIMENSION(:),INTENT(IN) :: dd2
CLASS(t2),DIMENSION(:),ALLOCATABLE :: addit
ALLOCATE(addit(5))
addit%n2 = dd1%n2 + dd2%n1
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: res = 0,num = 20
CLASS(t2),DIMENSION(:),ALLOCATABLE :: cass
CLASS(t1),DIMENSION(:),POINTER :: ptr
TYPE(typ) :: obj
TYPE(tpp) :: obj2
ALLOCATE(cass(5),ptr(5))

obj%rr = 7
obj2%rp = 3
obj2%prc => fun_ppc
cass%n2 = 13
ptr%n1 = 3

ASSOCIATE(aa => obj2%prc(num) , bb => obj%fun_ty(num))
  ASSOCIATE(aa => cass .plus. ptr )  
    IF(ALL(aa(1:5)%n2 .EQ. 16)) res = 1
  END ASSOCIATE
  ASSOCIATE(cc => aa%rp + bb%rr)
    IF(cc .EQ. 50) THEN
      res = res + 1
    ELSE
      res = 0
    END IF
  END ASSOCIATE
END ASSOCIATE

IF(res .EQ. 2) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
