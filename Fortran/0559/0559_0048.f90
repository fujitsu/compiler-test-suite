MODULE mod1
TYPE ty(k1,k2)
  INTEGER ,KIND::k1,k2=5
  CHARACTER(LEN=k2+4)::ch(k1:k2)
END TYPE
TYPE ty1(k3)
  INTEGER,KIND::k3=2
  TYPE(ty(-2))::cmp_ty
END TYPE

CHARACTER(LEN=9)::xx(-2:5)
TYPE(ty1(-2))::ty1_obj(4,4)

END MODULE
PROGRAM main
USE mod1
xx='HELLO PDT'
CALL SUB(ty1_obj)
CONTAINS
  SUBROUTINE SUB(dmy)
    TYPE(ty1(-2))::dmy(:,:)
    INTEGER::i=0
    dmy(2,3)%cmp_ty = ty(-2,5)((/(xx(i),i=-2,5)/))
    IF(ANY(dmy(2,3)%cmp_ty%ch /= 'HELLO PDT')) PRINT*,'101',dmy(2,3)%cmp_ty%ch(2)
    IF(LEN(dmy(2,3)%cmp_ty%ch) /= 9)  PRINT*,'102',LEN(dmy(2,3)%cmp_ty%ch)
    IF(LBOUND(dmy(2,3)%cmp_ty%ch,1) /= -2) PRINT*,'103',LBOUND(dmy(2,3)%cmp_ty%ch,1)
    IF(UBOUND(dmy(2,3)%cmp_ty%ch,1) /= 5) PRINT*,'104',LBOUND(dmy(2,3)%cmp_ty%ch,1)
    PRINT*,'PASS'
  END SUBROUTINE
END PROGRAM
