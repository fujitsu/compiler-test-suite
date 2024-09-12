MODULE mod1
TYPE ty(k1,k2)
  INTEGER ,KIND::k1,k2=5
  CHARACTER(LEN=k2)::ch(k1:k2)
  INTEGER::arr(k2) = 100
END TYPE

TYPE ty1(k3)
  INTEGER ,KIND::k3=2
  TYPE(ty(2)),POINTER::cmp_ty
END TYPE

TYPE ty2
  TYPE(ty1(2))::cmp_ty1
END TYPE

END MODULE
PROGRAM main
USE mod1
TYPE(ty2)::ty2_obj
CALL SUB(ty2_obj)
CONTAINS
  SUBROUTINE SUB(dmy)
    TYPE(ty2),INTENT(INOUT)::dmy
    TYPE(ty(2)),TARGET::ty_tar = ty(2)(ch='PDT')
    dmy = ty2(ty1(2)(ty_tar))
    IF(any(dmy%cmp_ty1%cmp_ty%ch /= 'PDT')) PRINT*,'101',dmy%cmp_ty1%cmp_ty%ch
    IF(LEN(dmy%cmp_ty1%cmp_ty%ch) /= 5)  PRINT*,'102',LEN(dmy%cmp_ty1%cmp_ty%ch)
    IF(LBOUND(dmy%cmp_ty1%cmp_ty%ch,1) /= 2) PRINT*,'103',LBOUND(dmy%cmp_ty1%cmp_ty%ch,1)
    IF(UBOUND(dmy%cmp_ty1%cmp_ty%ch,1) /= 5) PRINT*,'104',LBOUND(dmy%cmp_ty1%cmp_ty%ch,1)
    PRINT*,'PASS'
  END SUBROUTINE
END PROGRAM
