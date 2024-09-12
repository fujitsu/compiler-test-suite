MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: num1
END TYPE

TYPE,EXTENDS(t1) :: ty_ppc
  INTEGER :: nm
  PROCEDURE(fun_ppc),POINTER,PASS(dd1) :: prc
END TYPE
 
CONTAINS

FUNCTION fun_ppc(dd1,dd2)
IMPLICIT NONE
CLASS(ty_ppc),INTENT(IN) :: dd1
INTEGER,INTENT(IN) :: dd2
CLASS(ty_ppc),ALLOCATABLE :: fun_ppc
ALLOCATE(fun_ppc)
fun_ppc%nm = dd1%nm + dd2
END FUNCTION

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty_ppc) :: obj
CLASS(ty_ppc),ALLOCATABLE :: acc1
ALLOCATE(acc1)
acc1%nm = 10

SELECT TYPE(asc => acc1)
TYPE IS(ty_ppc)
  asc%prc =>  fun_ppc
  obj = asc%prc(5)
END SELECT

IF(obj%nm .EQ. 15) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
