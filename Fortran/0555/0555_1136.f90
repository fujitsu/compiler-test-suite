MODULE mod1
IMPLICIT NONE

INTEGER :: stat=1

TYPE ty
  INTEGER :: int1=3
  CONTAINS
    PROCEDURE, PASS :: prc2 => ty_bind
END TYPE

TYPE,EXTENDS(ty)::ty1
  REAL :: real1
  INTEGER :: int2
END TYPE


TYPE,EXTENDS(ty1)::ty2
  INTEGER :: int3=5
  CONTAINS
    PROCEDURE, PASS :: prc2 => ty2_bind
END TYPE
  
INTERFACE
SUBROUTINE ty_bind(def_dmy,dmy1)
  IMPORT ty
  CLASS(ty) :: def_dmy
  INTEGER :: dmy1
END SUBROUTINE
 
SUBROUTINE ty2_bind(def_dmy,dmy1)
  IMPORT ty2
  CLASS(ty2) :: def_dmy
  INTEGER :: dmy1
END SUBROUTINE
END INTERFACE
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(ty),ALLOCATABLE :: obj1
TYPE(ty2) :: obj2
INTEGER :: var1,var2,var3
ALLOCATE(obj1)
call obj1%prc2(var1)
DEALLOCATE(obj1)
ALLOCATE(ty1 :: obj1)
call obj1%prc2(var2)
DEALLOCATE(obj1)
ALLOCATE(obj1,SOURCE=obj2)
call obj1%prc2(var3)
IF (var1 .EQ. 3 .AND. var2 .EQ. 3 .AND.  var3 .EQ. 5) THEN
    PRINT*,"pass"
ELSE
    PRINT*, "fail"
ENDIF
END PROGRAM


SUBROUTINE ty2_bind(def_dmy,dmy1)
  USE mod1
  CLASS(ty2) :: def_dmy
  INTEGER :: dmy1
  dmy1 = def_dmy%int3
  IF(dmy1 .NE. 5) PRINT*,"fail4"
END SUBROUTINE


SUBROUTINE ty_bind(def_dmy,dmy1)
  USE mod1
  CLASS(ty) :: def_dmy
  INTEGER :: dmy1
  dmy1 = def_dmy%int1
  IF(stat .EQ. 1) THEN
    IF(SIZEOF(def_dmy) .NE. 4) PRINT*,'fail1'
  ELSE 
    IF(SIZEOF(def_dmy) .NE. 12 .AND. stat .EQ. 2) PRINT*,'fail2'
  ENDIF
  stat=stat+1
  IF(dmy1 .NE. 3) PRINT*,"fail3"
END SUBROUTINE
