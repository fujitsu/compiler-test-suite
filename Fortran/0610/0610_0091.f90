MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: i1 = 2
  CONTAINS
    PROCEDURE :: prc2 => ty_bind
    GENERIC,PUBLIC::OPERATOR(.plus.) => prc2
END TYPE
 
TYPE,EXTENDS(ty)::ty1
  INTEGER :: i2 = 3
  CONTAINS
    PROCEDURE,PASS :: prc2 => ty1_bind
END TYPE

TYPE,EXTENDS(ty1)::ty2
  INTEGER :: i3 = 5
END TYPE
  
CONTAINS
FUNCTION ty_bind(def_dmy,dmy)
  CLASS(ty),INTENT(IN) :: def_dmy
  INTEGER,INTENT(IN):: dmy
  CLASS(ty1),POINTER :: ty_bind
  ALLOCATE(ty_bind)
  ty_bind%i2 = def_dmy%i1 +  dmy
END FUNCTION

FUNCTION ty1_bind(def_dmy,dmy)
  CLASS(ty1),INTENT(IN) :: def_dmy
  INTEGER,INTENT(IN):: dmy
  CLASS(ty1),POINTER :: ty1_bind
  ALLOCATE(ty1_bind)
  ty1_bind%i2 = def_dmy%i2 + dmy
END FUNCTION
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(ty1),POINTER :: ty1_obj

ALLOCATE(ty1_obj)

SELECT TYPE(tbo => ty1_obj .plus. 10)
  CLASS IS(ty2)
    PRINT*,102
  CLASS IS(ty1)
    PRINT*,'pass'
  CLASS DEFAULT
    PRINT*,103
END SELECT

END PROGRAM
