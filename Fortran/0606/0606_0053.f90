MODULE mod1
IMPLICIT NONE

TYPE ty
  LOGICAL :: log1=.FALSE.
  CONTAINS
    PROCEDURE :: prc2 => ty_bind
    GENERIC,PRIVATE::OPERATOR(**) => prc2
END TYPE
 
TYPE,EXTENDS(ty)::ty1
  LOGICAL :: log2=.TRUE.
  CONTAINS
    PROCEDURE:: prc2 => ty1_bind
END TYPE

TYPE,EXTENDS(ty1)::ty2
  LOGICAL :: log3=.FALSE.
END TYPE
  
CONTAINS
LOGICAL FUNCTION ty_bind(def_dmy,dmy)
  CLASS(ty),INTENT(IN) :: def_dmy
  LOGICAL,INTENT(IN):: dmy
  ty_bind = def_dmy%log1 .OR. dmy
END FUNCTION

LOGICAL FUNCTION ty1_bind(def_dmy,dmy)
  CLASS(ty1),INTENT(IN) :: def_dmy
  LOGICAL,INTENT(IN):: dmy
  ty1_bind = def_dmy%log2 .OR. dmy
END FUNCTION


INTEGER FUNCTION start()
IMPLICIT NONE
 
CLASS(ty),POINTER  :: ty_obj
TYPE(ty1),TARGET :: ty1_obj
TYPE(ty2),TARGET :: ty2_obj
LOGICAL :: var1,var2,var3

ALLOCATE(ty_obj)
var1=ty_obj  ** .FALSE.

ty_obj=>ty1_obj
var2=ty_obj ** .FALSE.

ty_obj=>ty2_obj
var3=ty_obj ** .FALSE.
IF ((var1 .EQV. .FALSE.) .AND. (var2 .EQV. .TRUE.) .AND. (var3 .EQV. .TRUE.)) THEN
  PRINT*,"pass"
ELSE
  PRINT*, "fail"
ENDIF
start=100
END FUNCTION
END MODULE



PROGRAM main
USE mod1
IMPLICIT NONE
INTEGER::xx
xx=start()
IF(xx/=100) PRINT*,201
END PROGRAM
