MODULE mod1
TYPE ty(k3)
  INTEGER,KIND::k3
  INTEGER::xx(k3)
END TYPE
TYPE,EXTENDS (ty):: ty1(k1,k4, k2)
  INTEGER, KIND::k4
  INTEGER ,KIND::k1,k2=6
  CHARACTER(LEN=k2+2)::ch(k1:k2)
  REAL::arr(k2)
END TYPE
TYPE ty2
  INTEGER::val
  TYPE(ty1(4,2,4))::cmp_ty1 = ty1(4,2,4)(ty(4)(10),'HI',15.0)
END TYPE
END MODULE
PROGRAM main
USE mod1

TYPE(ty2)::ty2_obj(5,5)
PARAMETER(ty2_obj = ty2(10,ty1(4,2,4)(ty(4)(40),'HI-PDT',50.0)))
IF(any(ty2_obj(5,5)%cmp_ty1%ch  /= 'HI-PDT')) PRINT*,'101',ty2_obj(5,5)%cmp_ty1%ch(2)
IF(any(ty2_obj(5,5)%cmp_ty1%arr /= 50.0))PRINT*,'102',ty2_obj(5,5)%cmp_ty1%arr
IF(any(ty2_obj(5,5)%cmp_ty1%xx /= 40))PRINT*,'103',ty2_obj(5,5)%cmp_ty1%xx
PRINT*,'PASS'
END PROGRAM
