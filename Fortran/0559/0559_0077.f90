MODULE mod1
TYPE ty0(k3)
  INTEGER,KIND::k3
  INTEGER::xx(k3)
END TYPE
TYPE ty
  INTEGER::val
  TYPE(ty0(4))::cmp_ty0
END TYPE
TYPE,EXTENDS (ty):: ty1(k1, k2)
  INTEGER ,KIND::k1,k2=6
  CHARACTER(LEN=k2+2)::ch(k1:k2)
  REAL::arr(k2)
  TYPE(ty)::cmp_ty
END TYPE
END MODULE
PROGRAM main
USE mod1

TYPE(ty1(2,4))::ty1_obj(4)
PARAMETER(ty1_obj = (/(ty1(2,4)(ty(i+10,ty0(4)(i+20)),'HI-PDT',100.0,ty(200+i,ty0(4)(300+i))),i=1,4)/))
IF(ANY(ty1_obj(4)%ch /= 'HI-PDT')) PRINT*,'101',ty1_obj(4)%ch
IF(LEN(ty1_obj(4)%ch) /= 6) PRINT*,'102',LEN(ty1_obj(4)%ch)
IF(LBOUND(ty1_obj(4)%ch,1) /= 2) PRINT*,'103',LBOUND(ty1_obj(4)%ch,1)
IF(UBOUND(ty1_obj(4)%ch,1) /= 4) PRINT*,'104',UBOUND(ty1_obj(4)%ch,1)
IF(ANY(ty1_obj(4)%cmp_ty0%xx /= 24)) PRINT*,'105',ty1_obj(4)%cmp_ty0%xx
IF(ty1_obj(4)%k1 /= 2) PRINT*,'107',ty1_obj%k1
IF(ty1_obj%cmp_ty%cmp_ty0%k3 /= 4) PRINT*,'108',ty1_obj%cmp_ty%cmp_ty0%k3
IF(UBOUND(ty1_obj(4)%cmp_ty%cmp_ty0%xx,1) /= 4) PRINT*,'108',UBOUND(ty1_obj(4)%cmp_ty%cmp_ty0%xx,1)
PRINT*,'pass'
END PROGRAM
