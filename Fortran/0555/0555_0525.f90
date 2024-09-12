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

TYPE,EXTENDS(ty1)::ty2
  INTEGER :: int3=7
END TYPE
  
CONTAINS
INTEGER FUNCTION ty_bind(def_dmy)
  CLASS(ty) :: def_dmy
  ty_bind = def_dmy%int1
END FUNCTION

INTEGER FUNCTION ty1_bind(def_dmy)
  CLASS(ty1) :: def_dmy
  ty1_bind = def_dmy%int2
END FUNCTION
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(ty),ALLOCATABLE :: obj1
TYPE(ty1) :: obj2
INTEGER :: var1,var2,var3
ALLOCATE(obj1)
var1=obj1%prc2()
DEALLOCATE(obj1)
ALLOCATE(obj1,SOURCE=obj2)
var2=obj1%prc2()
DEALLOCATE(obj1)
ALLOCATE(ty2::obj1)
var3=obj1%prc2()
IF (var1 .EQ. 3 .AND. var2 .EQ. 5 .AND. var3 .EQ. 5) THEN
    PRINT*,"pass"
ELSE
    PRINT*, "fail"
ENDIF
END PROGRAM
