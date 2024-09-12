MODULE mod1
TYPE ty(k1,k2)
  INTEGER ,KIND::k1,k2=5
  CHARACTER(LEN=k2)::ch(k1:k2)
  INTEGER::arr(k2) = 100
END TYPE

TYPE ty1(k3)
  INTEGER ,KIND::k3=2
  TYPE(ty(2)),POINTER::cmp_ty(:)
END TYPE

TYPE ty2
  TYPE(ty1(2))::cmp_ty1
END TYPE

TYPE(ty2)::ty2_obj
END MODULE
PROGRAM main
USE mod1
INTEGER::i=0
ty2_obj = ty2(ty1(2)(FUN(100,'PDT')))
IF(ANY(ty2_obj%cmp_ty1%cmp_ty(2)%arr /= 100))  PRINT*,'101',ty2_obj%cmp_ty1%cmp_ty(2)%arr
IF(ty2_obj%cmp_ty1%cmp_ty(2)%ch(2) /= 'PDT')   PRINT*,'102',ty2_obj%cmp_ty1%cmp_ty(2)%ch(2)
IF(ty2_obj%cmp_ty1%cmp_ty%k2 /= 5) PRINT*,'103',ty2_obj%cmp_ty1%cmp_ty%k2
IF(LEN(ty2_obj%cmp_ty1%cmp_ty(2)%ch) /= 5)   PRINT*,'106',LEN(ty2_obj%cmp_ty1%cmp_ty(2)%ch)
IF(LBOUND(ty2_obj%cmp_ty1%cmp_ty(2)%ch,1) /= 2) PRINT*,'108',LBOUND(ty2_obj%cmp_ty1%cmp_ty(2)%ch,1)
IF(UBOUND(ty2_obj%cmp_ty1%cmp_ty(2)%ch,1) /= 5)  PRINT*,'109',LBOUND(ty2_obj%cmp_ty1%cmp_ty(2)%ch,1)
PRINT*,'PASS'
CONTAINS
  FUNCTION FUN(dmy1,dmy2) RESULT(res)
    INTEGER::dmy1
    CHARACTER(LEN=*)::dmy2
    TYPE(ty(2)),POINTER::res(:)
    ALLOCATE(res(4), SOURCE=ty(2)(dmy2,(/(dmy1, i = 1,5)/)))
  END FUNCTION
END PROGRAM
