MODULE mod1
TYPE ty(k1,k2)
  INTEGER ,KIND::k1,k2=5
  INTEGER::arr(k1:k2)
  CHARACTER(LEN=k2)::ch
END TYPE
TYPE ty1
 TYPE(ty(2))::cmp(2)
END TYPE
END MODULE

PROGRAM main
USE mod1
INTERFACE
  PURE FUNCTION FUN() RESULT(res)
    import ty
    TYPE(ty(2,5))::res
  END FUNCTION
END INTERFACE
TYPE(ty(2,5)),POINTER::ty_ptr(:)
TYPE(ty1),TARGET::ty1_obj
ty1_obj = ty1(FUN())
ty_ptr => ty1_obj%cmp
IF(ANY(ty_ptr(2)%arr /= 50)) PRINT*,'101',ty_ptr(2)%arr
IF(ty_ptr(2)%ch /= 'PDT')  PRINT*,'102',ty_ptr(2)%ch
IF(ty_ptr%k1 /= 2) PRINT*,'103',ty_ptr%k1
IF(ty_ptr%k2 /= 5) PRINT*,'104',ty_ptr%k2
IF(LEN(ty_ptr(2)%ch) /= 5) PRINT*,'105',LEN(ty_ptr(2)%ch)
IF(KIND(ty_ptr(2)%k2) /= 4) PRINT*,'106',KIND(ty_ptr(2)%k2)
IF(LBOUND(ty_ptr(2)%arr,1) /= 2) PRINT*,'107',LBOUND(ty_ptr(2)%arr,1)
IF(UBOUND(ty_ptr(2)%arr,1) /= 5) PRINT*,'108',LBOUND(ty_ptr(2)%arr,1)
PRINT*,'PASS'
END PROGRAM
PURE  FUNCTION FUN() RESULT(res)
    USE mod1
    TYPE(ty(2,5))::res
    res%arr = 50
    res%ch = 'PDT'
END FUNCTION
