PROGRAM MAIN
 
IMPLICIT NONE
 
TYPE ty
  INTEGER(KIND=8)::ii
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
  CLASS(ty2),POINTER::arrptr_ty2(:)
  INTEGER(kind=4)::pp
END TYPE
 
TYPE tata
 CLASS(ty),POINTER:: ptr_ty
END TYPE

TYPE(tata)::obj_tata
TYPE(con)::obj

ALLOCATE(obj%arrptr_ty2(3)) 
obj%arrptr_ty2%ii=3

obj%arrptr_ty2(2)%ii=7

obj_tata%ptr_ty=>obj%arrptr_ty2(2)
 
print*,obj_tata%ptr_ty%ii
END PROGRAM
