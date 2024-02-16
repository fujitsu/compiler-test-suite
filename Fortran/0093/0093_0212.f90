MODULE mod1
TYPE ty
  complex::arr(5)
END TYPE

END MODULE
MODULE mod2
USE mod1

TYPE, EXTENDS(ty)::ty1
  TYPE (ty)::cmp_ty
END TYPE

TYPE ty2
  TYPE(ty1) ::ty1_cmp
END TYPE
END MODULE

PROGRAM main
USE mod2
TYPE(ty2) ::ty2_obj
ty2_obj%ty1_cmp%cmp_ty%arr%RE = 8.65
ty2_obj%ty1_cmp%cmp_ty%arr%IM = 7.65

IF(UBOUND(ty2_obj%ty1_cmp%cmp_ty%arr%re,1) .ne.  5) PRINT*,'101'
IF(LBOUND(ty2_obj%ty1_cmp%cmp_ty%arr%im,1) .ne.  1) PRINT*,'102'
IF(SIZE(ty2_obj%ty1_cmp%cmp_ty%arr%re) .ne.  5) PRINT*,'103'
IF(SIZEOF(ty2_obj%ty1_cmp%cmp_ty%arr%im) .ne.  20) PRINT*,'104'
If(any(ty2_obj%ty1_cmp%cmp_ty%arr%RE .ne. 8.65)) PRINT*,'105' 
If(any(ty2_obj%ty1_cmp%cmp_ty%arr%IM  .ne. 7.65)) PRINT*,'106'
PRINT*,"PASS"

END PROGRAM


