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
  INTEGER,DIMENSION(5),INTENT(IN):: dmy
  CLASS(ty1),DIMENSION(:),ALLOCATABLE :: ty_bind
  ALLOCATE(ty_bind(5))
  ty_bind%i2 = def_dmy%i1 +  dmy
END FUNCTION

FUNCTION ty1_bind(def_dmy,dmy)
  CLASS(ty1),INTENT(IN) :: def_dmy
  INTEGER,DIMENSION(5),INTENT(IN):: dmy
  CLASS(ty1),DIMENSION(:),ALLOCATABLE :: ty1_bind
  ALLOCATE(ty1_bind(5))
  ty1_bind%i2 = def_dmy%i2 + dmy
END FUNCTION
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(ty1),ALLOCATABLE :: ty1_obj

ALLOCATE(ty1_obj)

SELECT TYPE(tbo => ty1_obj .plus. (/1,2,3,4,5/))
  CLASS IS(ty1)
  SELECT TYPE(tbo2 => tbo)
    CLASS IS(ty2)
      PRINT*,101
    CLASS IS(ty1)
      PRINT*,'pass' 
    CLASS DEFAULT
      PRINT*,103
  END SELECT
END SELECT

END PROGRAM
