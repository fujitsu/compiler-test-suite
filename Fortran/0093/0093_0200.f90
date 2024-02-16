MODULE mod1
TYPE ty
  complex::cmp
END TYPE

TYPE ty1
  TYPE (ty),POINTER::cmp_ty
END TYPE

TYPE ty2
  TYPE (ty1)::cmp_ty1
END TYPE
type (ty)::ty_obj=ty((7.88,9.87))
END MODULE
PROGRAM main
USE mod1
TYPE(ty2)::ty2_obj
CALL SUB(ty2_obj)
CONTAINS
  SUBROUTINE SUB(dmy)
    TYPE(ty2),INTENT(INOUT)::dmy
    allocate(dmy%cmp_ty1%cmp_ty, source = ty_obj)
    IF( dmy%cmp_ty1%cmp_ty%cmp%re /= 7.88) PRINT*,'106',dmy%cmp_ty1%cmp_ty%cmp%re
    IF( dmy%cmp_ty1%cmp_ty%cmp%im /= 9.87) PRINT*,'107',dmy%cmp_ty1%cmp_ty%cmp%im
    PRINT*,'PASS'
  END SUBROUTINE
END PROGRAM
