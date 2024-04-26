MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: n1
END TYPE

TYPE,EXTENDS(t1) :: t2
  INTEGER :: n2
END TYPE

TYPE tpp
  INTEGER :: n
  PROCEDURE(fun_ppc),POINTER,PASS(dd1) :: prc
END TYPE

INTERFACE OPERATOR(.mult.)
  MODULE PROCEDURE multip
END INTERFACE

CONTAINS

FUNCTION fun_ppc(dd1,dd2)
IMPLICIT NONE
CLASS(tpp),INTENT(IN) :: dd1
INTEGER,INTENT(IN) :: dd2
CLASS(tpp),ALLOCATABLE :: fun_ppc
ALLOCATE(fun_ppc)
fun_ppc%n = dd1%n + dd2
END FUNCTION

FUNCTION multip(d1,d2)
IMPLICIT NONE
CLASS(t1),DIMENSION(:),INTENT(IN) :: d1
CLASS(tpp),INTENT(IN) :: d2
INTEGER,DIMENSION(10) :: multip
multip = d1%n1 * d2%n
END FUNCTION

END MODULE

PROGRAM mian
USE mod1
IMPLICIT NONE

INTEGER :: res
TYPE(tpp),DIMENSION(3) :: obj

obj%n = 13
obj(3)%prc => fun_ppc

res = fun_main(obj)

IF(res .EQ. 1) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun_main(dobj)
IMPLICIT NONE
INTEGER :: fun_main
TYPE(tpp),DIMENSION(3) :: dobj

ASSOCIATE(aa => fun_in() , bb => dobj(3)%prc(11))
  ASSOCIATE(cc => (/'a','b','c','d','e'/) , dd =>  aa .mult. bb)
    SELECT CASE(cc(3))
    CASE('c')
      IF(ALL(dd(2::2) .EQ.288)) fun_main = 1
    END SELECT
  END ASSOCIATE
END ASSOCIATE
END FUNCTION

FUNCTION fun_in()
IMPLICIT NONE
CLASS(t2),DIMENSION(:),POINTER :: fun_in
ALLOCATE(fun_in(10))
fun_in%n1 = 12
END FUNCTION

END PROGRAM
