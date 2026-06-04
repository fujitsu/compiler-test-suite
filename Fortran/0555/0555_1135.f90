MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: int1=3
  CONTAINS
    PROCEDURE, PASS :: prc2 => ty_bind
END TYPE
 
TYPE,EXTENDS(ty)::ty1
  INTEGER :: int2=5
  CONTAINS
    PROCEDURE, PASS :: prc2 => ty1_bind
END TYPE
  
INTERFACE
  SUBROUTINE ty1_bind(def_dmy,dmy1)
    IMPORT ty1
    INTEGER :: dmy1
    CLASS(ty1) :: def_dmy
  END SUBROUTINE
END INTERFACE

CONTAINS
  SUBROUTINE ty_bind(def_dmy,dmy1)
    INTEGER :: dmy1
    CLASS(ty) :: def_dmy
    dmy1 = def_dmy%int1
  END SUBROUTINE
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(ty),ALLOCATABLE :: obj1
TYPE(ty1) :: obj2
INTEGER :: var1,var2
ALLOCATE(obj1)
call obj1%prc2(var1)
DEALLOCATE(obj1)
ALLOCATE(obj1,SOURCE=obj2)
call obj1%prc2(var2)
IF (var1 .EQ. 3 .AND. var2 .EQ. 5) THEN
    PRINT*,"pass"
ELSE
    PRINT*, "fail"
ENDIF
END PROGRAM

SUBROUTINE ty1_bind(def_dmy,dmy1)
  USE mod1
  INTEGER :: dmy1
  CLASS(ty1) :: def_dmy
  dmy1 = def_dmy%int2
END SUBROUTINE
