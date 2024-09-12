MODULE mod1
IMPLICIT NONE

INTEGER :: stat = 1

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

TYPE,EXTENDS(ty1)::ty2
  INTEGER :: int3=7
END TYPE
  
CONTAINS
SUBROUTINE ty_bind(dmy1,def_dmy)
  INTEGER :: dmy1
  CLASS(ty) :: def_dmy
  dmy1 = def_dmy%int1
END SUBROUTINE

SUBROUTINE ty1_bind(dmy1,def_dmy)
  INTEGER :: dmy1
  CLASS(ty1) :: def_dmy
  dmy1 = def_dmy%int2
  IF(stat .EQ. 1) THEN
    IF(SIZEOF(def_dmy) .NE. 8) PRINT*,'fail1'
  ELSE 
    IF(SIZEOF(def_dmy) .NE. 12 .AND. stat .EQ. 2) PRINT*,'fail2'
  ENDIF
  stat=stat+1
END SUBROUTINE
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(ty),ALLOCATABLE :: obj1
TYPE(ty1) :: obj2
INTEGER :: var1,var2,var3
ALLOCATE(obj1)
call obj1%prc2(var1)
DEALLOCATE(obj1)
ALLOCATE(obj1,SOURCE=obj2)
call obj1%prc2(var2)
DEALLOCATE(obj1)
ALLOCATE(ty2::obj1)
call obj1%prc2(var3)
IF (var1 .EQ. 3 .AND. var2 .EQ. 5 .AND. var3 .EQ. 5) THEN
    PRINT*,"pass"
ELSE
    PRINT*, "fail3"
ENDIF
END PROGRAM
