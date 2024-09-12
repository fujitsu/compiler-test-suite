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

END MODULE
PROGRAM main
USE mod1
TYPE(ty1)::ty1_obj=ty1(100, ty(2,6)('PDT', 200.00))
IF(ty1_obj%cmp_ty(2)%ch(2) /= 'PDT')   PRINT*,'101',ty1_obj%cmp_ty(2)%ch(2)
IF(ty1_obj%cmp_ty%k2 /= 6) PRINT*,'102',ty1_obj%cmp_ty%k2
IF(LEN(ty1_obj%cmp_ty(2)%ch) /= 6)   PRINT*,'103',LEN(ty1_obj%cmp_ty(2)%ch)
IF(LBOUND(ty1_obj%cmp_ty(2)%ch,1) /= 2) PRINT*,'104',LBOUND(ty1_obj%cmp_ty(2)%ch,1)
IF(UBOUND(ty1_obj%cmp_ty(2)%ch,1) /= 6)  PRINT*,'105',LBOUND(ty1_obj%cmp_ty(2)%ch,1)
PRINT*,'PASS'
END PROGRAM
