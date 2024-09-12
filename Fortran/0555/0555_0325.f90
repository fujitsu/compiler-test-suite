PROGRAM MAIN
 
IMPLICIT NONE
 
TYPE ty
  CHARACTER(LEN=8)::ii
  REAL(KIND=8)::jj
END TYPE
 
TYPE ,EXTENDS(ty)::ty1
  INTEGER(KIND=8) :: kk
  REAL(KIND=8) ::ll
END TYPE
 
TYPE ,EXTENDS(ty1)::ty2
  CHARACTER(LEN=4) ::mm
  INTEGER(KIND=4)::nn
END TYPE
 
CLASS(*),POINTER::ptr_ty2(:) => null()
 
TYPE tata
 CLASS(*),POINTER:: ptr_ty => null()
END TYPE

TYPE(tata)::obj_tata

ALLOCATE(ty::ptr_ty2(5))

      if(ASSOCIATED(obj_tata%ptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif
 
obj_tata%ptr_ty=>ptr_ty2(1)

      if(ASSOCIATED(obj_tata%ptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif
 
END PROGRAM
