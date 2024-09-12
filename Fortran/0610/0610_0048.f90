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
fun_ppc%num1 = dd1%num1 + dd2
END FUNCTION

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: res
CLASS(*),POINTER :: ptr
CLASS(ty_ppc),ALLOCATABLE,TARGET :: acc1,acc2
ALLOCATE(acc1)
acc1%num1 = 10
acc1%prc => fun_ppc

ptr => acc1

res = fun_int(ptr)

IF(res .EQ. 1) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun_int(dd1)
IMPLICIT NONE
CLASS(*),POINTER :: dd1
INTEGER :: fun_int
SELECT TYPE(dd1)
TYPE IS (ty_ppc)
  SELECT TYPE(asc => dd1%prc(5))
  CLASS IS(ty_ppc) 
  ALLOCATE(acc2,SOURCE = asc)
  fun_int = 1
END SELECT
END SELECT
END FUNCTION

END PROGRAM
