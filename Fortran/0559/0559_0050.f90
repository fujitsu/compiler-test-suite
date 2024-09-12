MODULE mod1
TYPE ty(k1,k2)
  INTEGER ,KIND::k1,k2=5
  CHARACTER(LEN=k2)::ch(k1:k2)
END TYPE

TYPE ty1(k3)
  INTEGER ,KIND::k3=2
  TYPE(ty(2)),allocatable::cmp_ty
END TYPE

TYPE ty2
  TYPE(ty1(2))::cmp_ty1
END TYPE

type(ty(2,5))::ty_obj=ty(2,5)('PDT')
END MODULE
PROGRAM main
USE mod1
TYPE(ty2)::ty2_obj
CALL SUB(ty2_obj)
CONTAINS
  SUBROUTINE SUB(dmy)
    TYPE(ty2),INTENT(INOUT)::dmy
    dmy = ty2(ty1(2)(NULL()))
    allocate(dmy%cmp_ty1%cmp_ty, source = ty_obj)
    IF(any(dmy%cmp_ty1%cmp_ty%ch /= 'PDT')) PRINT*,'101',dmy%cmp_ty1%cmp_ty%ch
    IF(LEN(dmy%cmp_ty1%cmp_ty%ch) /= 5)  PRINT*,'102',LEN(dmy%cmp_ty1%cmp_ty%ch)
    IF(LBOUND(dmy%cmp_ty1%cmp_ty%ch,1) /= 2) PRINT*,'103',LBOUND(dmy%cmp_ty1%cmp_ty%ch,1)
    IF(UBOUND(dmy%cmp_ty1%cmp_ty%ch,1) /= 5) PRINT*,'104',LBOUND(dmy%cmp_ty1%cmp_ty%ch,1)
    PRINT*,'PASS'
  END SUBROUTINE
END PROGRAM
