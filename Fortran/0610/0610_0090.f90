MODULE mod1
IMPLICIT NONE

TYPE ty
  LOGICAL :: log1=.FALSE.
  CONTAINS
    PROCEDURE :: prc2 => ty_bind
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
FUNCTION ty_bind(def_dmy,dmy)
  CLASS(ty),INTENT(IN) :: def_dmy
  LOGICAL,INTENT(IN):: dmy
  CLASS(ty1),ALLOCATABLE :: ty_bind
  ALLOCATE(ty_bind)
  ty_bind%log2 = def_dmy%log1 .OR. dmy
END FUNCTION

FUNCTION ty1_bind(def_dmy,dmy)
  CLASS(ty1),INTENT(IN) :: def_dmy
  LOGICAL,INTENT(IN):: dmy
  CLASS(ty1),ALLOCATABLE :: ty1_bind
  ALLOCATE(ty1_bind)
  ty1_bind%log2 = def_dmy%log2 .OR. dmy
END FUNCTION
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(ty1),ALLOCATABLE :: ty1_obj

ALLOCATE(ty1_obj)

SELECT TYPE(tbo => ty1_obj .OR. .FALSE.)
  CLASS IS(ty2)
    PRINT*,102
  CLASS IS(ty1)
    PRINT*,'pass'
  CLASS DEFAULT
    PRINT*,103
END SELECT

END PROGRAM
