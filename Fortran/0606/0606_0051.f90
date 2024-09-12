MODULE mod1
IMPLICIT NONE

TYPE ty
  LOGICAL :: log1=.FALSE.
  CLASS(ty),POINTER::ty_ptr
  CONTAINS
    PROCEDURE,PASS :: prc2 => ty_bind
    GENERIC,PUBLIC::OPERATOR(.OR.) => prc2
END TYPE
 
TYPE,EXTENDS(ty)::ty1
  LOGICAL :: log2=.TRUE.
  CLASS(ty),ALLOCATABLE::ty_alloc
  CONTAINS
    PROCEDURE,PASS :: prc2 => ty1_bind
END TYPE

TYPE,EXTENDS(ty1)::ty2
  CLASS(ty2),POINTER::ty2_ptr
  TYPE(ty1),POINTER::ty1_ptr
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

CLASS(ty),POINTER :: ptr
LOGICAL :: var1,var2,var3

TYPE(ty),TARGET::ty_obj
TYPE(ty2),TARGET::ty2_obj

ALLOCATE(ptr)
ALLOCATE(ty2_obj%ty2_ptr)
ALLOCATE(ty1::ty2_obj%ty2_ptr%ty1_ptr)

ptr%ty_ptr=>ty_obj
var1=ptr%ty_ptr .OR. .FALSE.

ptr%ty_ptr=>ty2_obj%ty2_ptr%ty1_ptr
var2=ptr%ty_ptr .OR. .FALSE.

ptr%ty_ptr=>ty2_obj
var3=ptr%ty_ptr .OR. .FALSE.

IF ((var1 .EQV. .FALSE.) .AND. (var2 .EQV. .TRUE.) .AND. (var3 .EQV. .TRUE.)) THEN
    PRINT*,"pass"
ELSE
    PRINT*, "fail"
ENDIF
END PROGRAM
