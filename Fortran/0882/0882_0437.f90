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
  CLASS(*),POINTER::ptr_ty2=>NULL()
  INTEGER(kind=4)::pp
END TYPE
 
TYPE tata
 CLASS(*),POINTER:: ptr_ty=>NULL()
END TYPE

TYPE(tata)::obj_tata
TYPE(con)::obj

ALLOCATE(ty1::obj%ptr_ty2)
 
      if(ASSOCIATED(obj_tata%ptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif

obj_tata%ptr_ty=>obj%ptr_ty2

      if(ASSOCIATED(obj_tata%ptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif
 
END PROGRAM
