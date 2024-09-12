MODULE mod1
TYPE ty(k1,k2)
  INTEGER ,KIND::k1,k2=6
  CHARACTER(LEN=k2)::ch(k1:k2)
  REAL::arr(k2)
END TYPE

TYPE ty1
  INTEGER(KIND=8)::ii
  TYPE(ty(2))::cmp_ty(2)
END TYPE
TYPE ty2(k3,k4)
  INTEGER,KIND::k3,k4
  REAL::val
  TYPE(ty1)::cmp_ty1(k3:k4)
END TYPE

END MODULE
PROGRAM main
USE mod1
TYPE(ty2(2,5)),ALLOCATABLE::ty2_obj(:)

ALLOCATE(ty2_obj(2), SOURCE=ty2(2,5)(10.0,ty1(20,ty(2,6)('PDT',300))))
IF(ty2_obj(2)%cmp_ty1(2)%cmp_ty(2)%ch(2) /= 'PDT')   PRINT*,'101',ty2_obj(2)%cmp_ty1(2)%cmp_ty(2)%ch(2)
IF(LEN(ty2_obj(2)%cmp_ty1(2)%cmp_ty(2)%ch) /= 6)   PRINT*,'103',LEN(ty2_obj(2)%cmp_ty1(2)%cmp_ty(2)%ch)
IF(LBOUND(ty2_obj(2)%cmp_ty1(2)%cmp_ty(2)%arr,1) /= 1) PRINT*,'105',LBOUND(ty2_obj(2)%cmp_ty1(2)%cmp_ty(2)%arr,1)
IF(UBOUND(ty2_obj(2)%cmp_ty1(2)%cmp_ty(2)%arr,1) /= 6)  PRINT*,'106',LBOUND(ty2_obj(2)%cmp_ty1(2)%cmp_ty(2)%arr,1)
PRINT*,'PASS'
END PROGRAM