PROGRAM MAIN

IMPLICIT NONE
 
TYPE ty
  INTEGER(KIND=4)::jj
  REAL(KIND=4)::real1
END TYPE
 
TYPE ,EXTENDS(ty)::ty1
  INTEGER(KIND=8) :: kk
  REAL(KIND=8) ::ll
END TYPE 

TYPE ,EXTENDS(ty1)::ty2
  INTEGER(KIND=4) ::mm
  INTEGER(KIND=4)::nn
END TYPE 

 
CLASS(ty),POINTER:: ptr_ty
CLASS(ty2),POINTER :: arrptr_ty2(:)

ALLOCATE(arrptr_ty2(9))

arrptr_ty2(4)%real1=3
ptr_ty=>arrptr_ty2(4)
print*,ptr_ty%real1
END PROGRAM
