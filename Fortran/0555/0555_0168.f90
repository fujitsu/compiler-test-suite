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
  CLASS(ty2),POINTER::ptr_ty2
  INTEGER(kind=4)::pp
END TYPE

TYPE(con)::obj
CLASS(ty),POINTER:: ptr_ty

ALLOCATE(obj%ptr_ty2)
obj%ptr_ty2%ii='testing'
ptr_ty=>obj%ptr_ty2

print*,ptr_ty%ii
END PROGRAM