MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: int1=3
  CONTAINS
    PROCEDURE, PASS(def_dmy) :: prc2 => ty_bind
END TYPE
 
TYPE,EXTENDS(ty)::ty1
  INTEGER :: int2=5
  CONTAINS
    PROCEDURE, PASS(def_dmy) :: prc2 => ty1_bind
END TYPE
  
CONTAINS
SUBROUTINE ty_bind(dmy,dmy1,dmy2,def_dmy,dmy3)
  CHARACTER(LEN=20) :: dmy
  INTEGER :: dmy1
  REAL :: dmy2
  CHARACTER(LEN=20) :: dmy3
  CLASS(ty) :: def_dmy
  IF(dmy1 .NE. 2 .AND. dmy2 .NE. 2.3) PRINT*,'fail1'
  dmy = dmy3
END SUBROUTINE

SUBROUTINE ty1_bind(dmy,dmy1,dmy2,def_dmy,dmy3)
  CHARACTER(LEN=20) :: dmy
  INTEGER :: dmy1
  REAL :: dmy2
  CHARACTER(LEN=20) :: dmy3
  CLASS(ty1) :: def_dmy
  IF(dmy1 .NE. 20 .AND. dmy2 .NE. 20.3) PRINT*,'fail2'
  dmy = dmy3
END SUBROUTINE
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty) :: obj1
TYPE(ty1) :: obj2
INTEGER :: act_arg1,act_arg2
REAL :: act_arg3,act_arg4
CHARACTER(LEN=20) :: act_arg5,act_arg6
CHARACTER(LEN=20) :: test1,test2
act_arg1=1
act_arg2=10
act_arg3=2.3
act_arg4=20.3
act_arg5='BEFORE OVERRIDING'
act_arg6='AFTER OVERRIDING'
call obj1%prc2(test1,act_arg1,act_arg3,act_arg5)
call obj2%prc2(test2,act_arg2,act_arg4,act_arg6)

IF (test1 .EQ. 'BEFORE OVERRIDING' .AND. test2 .EQ. 'AFTER OVERRIDING') THEN
    PRINT*,"pass"
ELSE
    PRINT*, "fail3"
ENDIF
END PROGRAM
