MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER(KIND = 2) :: xx 
END TYPE

TYPE,EXTENDS(t1) :: t2
  INTEGER(KIND = 2) :: yy
END TYPE

TYPE ty
  CHARACTER(LEN = 5) :: ch = 'aaaaa'
  CHARACTER(LEN = 3) :: c = 'aaa' 
  INTEGER(KIND = 2) :: ar(3,3) = 2
  INTEGER(KIND = 2) :: x = 12,y = 13 
END TYPE

TYPE typ
  INTEGER(KIND = 2) :: rr 
  PROCEDURE(fun),POINTER,PASS(dy1) :: prc
END TYPE

INTERFACE OPERATOR(.mult.)
  MODULE PROCEDURE multip
END INTERFACE

CONTAINS

FUNCTION fun(dy1,dy2)
IMPLICIT NONE
INTEGER(KIND = 2) :: fun
CLASS(typ),INTENT(IN) :: dy1
INTEGER(KIND = 2),INTENT(IN) :: dy2
fun = dy1%rr + dy2
END FUNCTION

FUNCTION multip(d1,d2)
IMPLICIT NONE
CLASS(t2),INTENT(IN) :: d1
INTEGER(KIND = 2),INTENT(IN) :: d2
CLASS(t2),ALLOCATABLE :: multip
ALLOCATE(multip)
multip%yy = d1%yy * d2
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER(KIND = 2) :: res,r = 8,st_fun,df,m_res
st_fun(df) = df + 2
CLASS(t2),ALLOCATABLE,TARGET :: acc1,acc
CLASS(t1),POINTER :: ptr
TYPE(typ),ALLOCATABLE :: obj1
TYPE(ty),ALLOCATABLE :: obj2
ALLOCATE(acc1,obj1,obj2)
acc1%yy = 10
obj1%rr = 5
obj1%prc => fun
ptr => acc1

m_res = fun_in(acc1)

IF(m_res .EQ. 3) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun_in(dacc1)
IMPLICIT NONE
INTEGER(KIND = 2) :: fun_in,nn = 4
CLASS(t2),ALLOCATABLE,TARGET :: dacc1

ASSOCIATE(aa => dacc1 .mult. nn)
  ASSOCIATE(aa =>  obj1%prc(r) + st_fun(r) )
    SELECT CASE(aa)
      CASE(23)
      res = 1
    END SELECT
  END ASSOCIATE
  ALLOCATE(acc,SOURCE = aa)
  IF(acc%yy .EQ. 40) DEALLOCATE(acc)
  ASSOCIATE(bb => ASSOCIATED(ptr))
    IF(bb) THEN
      res = res + 1
    ELSE
      res = res - 1
    END IF  
    ASSOCIATE(cc => MAX(obj2%x,obj2%y) + obj2%ar(1,1))
      SELECT CASE(cc)
        CASE(15)
        res = res + 1
      END SELECT
    END ASSOCIATE
  END ASSOCIATE
END ASSOCIATE
fun_in = res
END FUNCTION

END PROGRAM
