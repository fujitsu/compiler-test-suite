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
 
TYPE con
  CHARACTER(LEN=4)::oo
  TYPE(ty2),POINTER::arrptr_ty2(:)
  INTEGER(kind=4)::pp
END TYPE
 
TYPE tata
 CLASS(*),POINTER:: ptr_ty=>null()
END TYPE

TYPE(tata)::obj_tata
TYPE(con)::obj

ALLOCATE(obj%arrptr_ty2(10))
obj%arrptr_ty2(1:10)%ii='same'
obj%arrptr_ty2(3)%ii='different'

      if(ASSOCIATED(obj_tata%ptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif

obj_tata%ptr_ty=>obj%arrptr_ty2(3)

      if(ASSOCIATED(obj_tata%ptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif

END PROGRAM
