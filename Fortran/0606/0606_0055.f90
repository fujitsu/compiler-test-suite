MODULE mod1
IMPLICIT NONE

TYPE ty
  LOGICAL(2) :: log1=.FALSE.
  INTEGER(2) :: ii=3
  CONTAINS
    PROCEDURE,PASS :: prc2 => ty_bind
    GENERIC,PUBLIC::OPERATOR(//) => prc2
END TYPE
 
TYPE,EXTENDS(ty)::ty1
  LOGICAL :: log2=.TRUE.
  CONTAINS
    PROCEDURE,PASS :: prc2 => ty1_bind
END TYPE

TYPE,EXTENDS(ty1)::ty2
  LOGICAL :: log3=.FALSE.
END TYPE
  
CONTAINS
LOGICAL FUNCTION ty_bind(def_dmy,dmy)
  CLASS(ty),INTENT(IN) :: def_dmy
  LOGICAL,INTENT(IN):: dmy(def_dmy%ii)
  ty_bind = def_dmy%log1 .OR. dmy(1)
END FUNCTION

LOGICAL FUNCTION ty1_bind(def_dmy,dmy)
  CLASS(ty1),INTENT(IN) :: def_dmy
  LOGICAL,INTENT(IN):: dmy(def_dmy%ii)
  ty1_bind = def_dmy%log2 .OR. dmy(1)
END FUNCTION

SUBROUTINE sub(dmy)
IMPLICIT NONE
INTEGER::dmy
CLASS(ty),POINTER  :: ty_obj(:)
TYPE(ty1),TARGET :: ty1_obj(2)
TYPE(ty2),TARGET :: ty2_obj(2)
LOGICAL :: var1,var2,var3
LOGICAL :: temp(dmy)
temp=.FALSE.

ALLOCATE(ty_obj(2))
var1=ty_obj(1)  // temp

ty_obj=>ty1_obj
var2=ty1_obj(1) // temp

ty_obj=>ty2_obj
var3=ty2_obj(1) // temp
IF ((var1 .EQV. .FALSE.) .AND. (var2 .EQV. .TRUE.) .AND. (var3 .EQV. .TRUE.)) THEN
    PRINT*,"pass"
ELSE
    PRINT*, "fail"
ENDIF
END SUBROUTINE
END MODULE


PROGRAM main
USE mod1
INTEGER::var=3
CALL sub(var)
END PROGRAM
