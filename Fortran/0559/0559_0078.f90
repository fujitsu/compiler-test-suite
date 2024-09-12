MODULE mod1
TYPE ty0(k4)
  INTEGER,KIND::k4
  INTEGER::xx(k4)
END TYPE
TYPE ty
  INTEGER::val
  TYPE(ty0(4))::cmp_ty0
END TYPE
TYPE,EXTENDS (ty):: ty1(k1,k2, k3)
  INTEGER, KIND::k1
  INTEGER ,KIND::k2,k3=6
  CHARACTER(LEN=k1)::ch(k1:k3)
  REAL::arr(k1)
  TYPE(ty)::cmp_ty
END TYPE
END MODULE
PROGRAM main
USE mod1

TYPE(ty1(2,4,6))::ty1_obj(4)
PARAMETER(ty1_obj = ty1(2,4,6)(ty(10,ty0(4)(24)),'HI-PDT',100.0,ty(200, ty0(4)(300))))
IF(ANY(ty1_obj(4)%ch /= 'HI')) PRINT*,'101',ty1_obj(4)%ch
IF(LEN(ty1_obj(4)%ch) /= 2) PRINT*,'102',LEN(ty1_obj(4)%ch)
IF(LBOUND(ty1_obj(4)%ch,1) /= 2) PRINT*,'103',LBOUND(ty1_obj(4)%ch,1)
IF(UBOUND(ty1_obj(4)%ch,1) /= 6) PRINT*,'104',UBOUND(ty1_obj(4)%ch,1)
IF(ANY(ty1_obj(4)%cmp_ty0%xx /= 24)) PRINT*,'105',ty1_obj(4)%cmp_ty0%xx
IF(ty1_obj(4)%k1 /= 2) PRINT*,'107',ty1_obj%k1
IF(UBOUND(ty1_obj(4)%cmp_ty%cmp_ty0%xx,1) /= 4) PRINT*,'108',UBOUND(ty1_obj(4)%cmp_ty%cmp_ty0%xx,1)
PRINT*,'pass'
END PROGRAM
