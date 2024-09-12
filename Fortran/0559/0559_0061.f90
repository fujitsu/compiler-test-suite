MODULE mod1
TYPE ty
  INTEGER(KIND=8)::ii
  CHARACTER(LEN=5)::ch(2:6)
END TYPE
TYPE ty1(k1,k2)
  INTEGER ,KIND::k1,k2=6
  CHARACTER(LEN=k2+2)::ch(k1:k2)
  TYPE(ty)::cmp_ty(k1)
  REAL::arr(k2)
  REAL::brr(4)
END TYPE

TYPE ty2(k3,k4)
  INTEGER,KIND::k3,k4
  REAL::val
  TYPE(ty1(k3,k4))::cmp_ty1(k3:k4)
END TYPE

END MODULE
PROGRAM main
USE mod1
TYPE(ty2(2,5))::ty2_obj
ty2_obj=ty2(2,5)(10.0,ty1(2,5)('HI-PDT',ty(10,'HELLO'),100,[20,20,20,20]))
IF(ty2_obj%cmp_ty1(2)%cmp_ty(2)%ch(2) /= 'HELLO')   PRINT*,'101',ty2_obj%cmp_ty1(2)%cmp_ty(2)%ch(2)
IF(ty2_obj%cmp_ty1(2)%k2 /= 5) PRINT*,'102',ty2_obj%cmp_ty1(2)%k2
IF(LEN(ty2_obj%cmp_ty1(2)%cmp_ty(2)%ch) /= 5)   PRINT*,'103',LEN(ty2_obj%cmp_ty1(2)%cmp_ty(2)%ch)
IF(LEN(ty2_obj%cmp_ty1(2)%ch) /= 7)   PRINT*,'104',LEN(ty2_obj%cmp_ty1(2)%ch)
IF(LBOUND(ty2_obj%cmp_ty1(2)%arr,1) /= 1) PRINT*,'105',LBOUND(ty2_obj%cmp_ty1(2)%arr,1)
IF(UBOUND(ty2_obj%cmp_ty1(2)%arr,1) /= 5)  PRINT*,'106',LBOUND(ty2_obj%cmp_ty1(2)%arr,1)
IF(LBOUND(ty2_obj%cmp_ty1(2)%brr,1) /= 1) PRINT*,'107',LBOUND(ty2_obj%cmp_ty1(2)%brr,1)
IF(UBOUND(ty2_obj%cmp_ty1(2)%brr,1) /= 4)  PRINT*,'108',UBOUND(ty2_obj%cmp_ty1(2)%brr,1)
PRINT*,'PASS'
END PROGRAM
