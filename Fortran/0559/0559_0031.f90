MODULE mod1
TYPE ty(k1,k2)
  INTEGER ,KIND::k1,k2=5
  INTEGER::arr(k1:k2)
  CHARACTER(LEN=k2)::ch
END TYPE
END MODULE
MODULE mod2
USE mod1
TYPE::ty1
  TYPE(ty(2))::cmp_ty
END TYPE
END MODULE

PROGRAM main
USE mod2
TYPE(ty(2)),POINTER::ty_ptr
TYPE(ty1),TARGET::ty1_obj = ty1(ty(2,5)(50,'PDT'))
ty_ptr=>ty1_obj%cmp_ty
IF(ANY(ty_ptr%arr /= 50)) PRINT*,'101',ty_ptr%arr
IF(ty1_obj%cmp_ty%ch /= 'PDT')  PRINT*,'102',ty1_obj%cmp_ty%ch
IF(ty_ptr%k1 /= 2) PRINT*,'103',ty_ptr%k1
IF(ty_ptr%k2 /= 5) PRINT*,'104',ty_ptr%k2
IF(LEN(ty1_obj%cmp_ty%ch) /= 5) PRINT*,'106',LEN(ty1_obj%cmp_ty%ch)
IF(KIND(ty_ptr%k2) /= 4) PRINT*,'107',KIND(ty_ptr%k2)
IF(LBOUND(ty_ptr%arr,1) /= 2) PRINT*,'108',LBOUND(ty_ptr%arr,1)
IF(UBOUND(ty_ptr%arr,1) /= 5) PRINT*,'109',LBOUND(ty_ptr%arr,1)
PRINT*,'PASS'
END PROGRAM
