MODULE mod1
IMPLICIT NONE

TYPE ty
  LOGICAL :: log1=.FALSE.
  CONTAINS
    PROCEDURE,PASS :: prc2 => ty_bind
    GENERIC,PUBLIC::OPERATOR(.OR.) => prc2
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
  LOGICAL,INTENT(IN):: dmy
  ty_bind = def_dmy%log1 .OR. dmy
END FUNCTION

LOGICAL FUNCTION ty1_bind(def_dmy,dmy)
  CLASS(ty1),INTENT(IN) :: def_dmy
  LOGICAL,INTENT(IN):: dmy
  ty1_bind = def_dmy%log2 .OR. dmy
END FUNCTION
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty)  :: ty_obj
TYPE(ty1) :: ty1_obj
TYPE(ty2) :: ty2_obj
LOGICAL :: var1,var2,var3

associate(tbo1=>ty_obj , tbo2=> .FALSE., tbo3=>ty2_obj .OR. .FALSE.)
var1= tbo1 .OR. .FALSE.
var2= ty1_obj .OR. tbo2
var3= tbo3
IF ((var1 .EQV. .FALSE.) .AND. (var2 .EQV. .TRUE.) .AND. (var3 .EQV. .TRUE.)) THEN
    PRINT*,"pass"
ELSE
    PRINT*, "fail",var1,var2,var3
ENDIF
end associate
END PROGRAM
