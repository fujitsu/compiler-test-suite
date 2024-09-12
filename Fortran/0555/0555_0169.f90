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

TYPE(con)::obj
CLASS(ty),POINTER:: ptr_ty
ALLOCATE(obj%arrptr_ty2(10))
obj%arrptr_ty2(1:10)%ii='same'
obj%arrptr_ty2(3)%ii='diffrent'
ptr_ty=>obj%arrptr_ty2(3)

print*,obj%arrptr_ty2(1)%ii
print*,ptr_ty%ii

END PROGRAM
