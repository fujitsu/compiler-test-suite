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
  TYPE(ty2),POINTER::arrptr_ty2(:,:,:,:)
  INTEGER(kind=4)::pp
END TYPE

TYPE(con)::obj
CLASS(ty),POINTER:: arrptr_ty(:,:,:,:)

ALLOCATE(obj%arrptr_ty2(6,6,6,6))

obj%arrptr_ty2%ii='testing'

obj%arrptr_ty2(4,4,4,4)%ii='tested'
arrptr_ty=>obj%arrptr_ty2

print*,arrptr_ty(2,4,4,4)%ii
print*,arrptr_ty(4,4,4,4)%ii
END PROGRAM
