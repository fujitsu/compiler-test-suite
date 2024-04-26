MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER(KIND = 4) :: xx 
END TYPE

TYPE,EXTENDS(t1) :: t2
  INTEGER(KIND = 4) :: yy
END TYPE

INTERFACE OPERATOR(.plus.)
  MODULE PROCEDURE addit
END INTERFACE

INTERFACE OPERATOR(.mult.)
  MODULE PROCEDURE multip
END INTERFACE

CONTAINS

FUNCTION addit(d1,d2)
IMPLICIT NONE
CLASS(t2),DIMENSION(:),INTENT(IN) :: d1
CLASS(t1),DIMENSION(:),INTENT(IN) :: d2
CLASS(t2),DIMENSION(:),ALLOCATABLE :: addit
ALLOCATE(addit(10))
addit%yy = d1%yy + d2%xx
END FUNCTION

FUNCTION multip(d1,d2)
IMPLICIT NONE
CLASS(t2),DIMENSION(:),INTENT(IN) :: d1
INTEGER(KIND = 4),INTENT(IN) :: d2
CLASS(t2),DIMENSION(:),ALLOCATABLE :: multip
ALLOCATE(multip(10))
multip%yy = d1%yy * d2
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER(KIND =4) :: res,rr = 8,st_fun,df,m_res
st_fun(df) = df + 2
CLASS(t2),DIMENSION(:),ALLOCATABLE :: acc1
CLASS(t1),DIMENSION(:),POINTER :: ptr
ALLOCATE(acc1(10),ptr(10))
acc1%yy = 10
ptr%xx = 20

m_res = fun_in(acc1)

IF(m_res .EQ. 3) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun_in(dacc1)
IMPLICIT NONE
INTEGER(KIND =4) :: fun_in
CLASS(t2),DIMENSION(:),ALLOCATABLE :: dacc1

ASSOCIATE(aa => dacc1 .mult. 4)
  ASSOCIATE(bb => aa(5)%yy + st_fun(rr))
    SELECT CASE(bb)
      CASE(50)
      res = 1
    END SELECT
  END ASSOCIATE
  ASSOCIATE(cc => fun_1(dacc1) .plus. fun_2(ptr))
    IF(ALL(cc(::2)%yy .EQ. 30)) THEN
      res = res + 1
    ELSE
      res = res - 1
    END IF
    ASSOCIATE(dd => fun_3(aa(5)%yy ))
     IF(dd .EQ. 40) res = res + 1
    END ASSOCIATE
  END ASSOCIATE
END ASSOCIATE
fun_in = res
END FUNCTION

FUNCTION fun_1(dd1)
IMPLICIT NONE
CLASS(t2),DIMENSION(:),ALLOCATABLE :: dd1,fun_1
ALLOCATE(fun_1(10))
fun_1%yy = dd1%yy
END FUNCTION

FUNCTION fun_2(dd2)
IMPLICIT NONE
CLASS(t1),DIMENSION(:),POINTER :: dd2,fun_2
fun_2 => dd2
END FUNCTION

FUNCTION fun_3(dd3)
IMPLICIT NONE
INTEGER(KIND = 4) :: dd3,fun_3
fun_3 = dd3
END FUNCTION

END PROGRAM
