MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: num1=0
END TYPE

TYPE,EXTENDS(t1) :: ty_ppc
  INTEGER :: nm=1
  PROCEDURE(sub_ppc),POINTER,PASS(dd1) :: prc
END TYPE

INTERFACE OPERATOR(.plus.)
  MODULE PROCEDURE addit
END INTERFACE

CONTAINS

SUBROUTINE sub_ppc(dd1,dd2)
IMPLICIT NONE
CLASS(ty_ppc),INTENT(IN) :: dd1
INTEGER,INTENT(OUT) :: dd2
dd2=5
dd2 = dd1%nm + dd2
END SUBROUTINE

FUNCTION addit(dy1,dy2)
IMPLICIT NONE
CLASS(ty_ppc),INTENT(IN) :: dy1
CLASS(t1),INTENT(IN) :: dy2
CLASS(ty_ppc),ALLOCATABLE :: addit
ALLOCATE(addit)
addit%nm = dy1%nm + dy2%num1
addit%prc =>  sub_ppc
END FUNCTION

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: dem = 5
CLASS(ty_ppc),ALLOCATABLE :: acc1
CLASS(t1),POINTER :: ptr
ALLOCATE(acc1,ptr)
acc1%nm = 10
ptr%num1 = 20

SELECT TYPE(asc => acc1 .plus. ptr )
CLASS IS(ty_ppc)
  CALL asc%prc(dem)
END SELECT

IF(dem .EQ. 35) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
