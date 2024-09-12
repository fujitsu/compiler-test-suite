MODULE mod1
IMPLICIT NONE

TYPE ty
  LOGICAL(2) :: log1=.FALSE.
  INTEGER(2) :: ii=3
  CONTAINS
    PROCEDURE,PASS :: prc2 => ty_bind
    GENERIC,PUBLIC::OPERATOR(.le.) => prc2
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
LOGICAL :: temp(dmy)
temp=.FALSE.

ALLOCATE(ty_obj(2))
print*,'Inside print statement case-', ty_obj(1)  .le. temp, ' : F is PASS1'
ty_obj=>ty1_obj
print*,'Inside print statement case-',ty_obj(1)  .le. temp, ' : T is PASS2'
ty_obj=>ty2_obj
print*,'Inside print statement case-',ty_obj(1)  .le. temp, ' : T is PASS3'
END SUBROUTINE
END MODULE


PROGRAM main
USE mod1
INTEGER::var=3
CALL sub(var)
END PROGRAM
