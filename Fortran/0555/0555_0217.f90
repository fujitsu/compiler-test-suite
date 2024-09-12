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
 
TYPE tata 
 CLASS(ty),POINTER:: ptr_ty
END TYPE

TYPE(tata)::obj_tata
CLASS(ty2),POINTER :: arrptr_ty2(:)
 
ALLOCATE(arrptr_ty2(9))
 
arrptr_ty2(4)%real1=3
obj_tata%ptr_ty=>arrptr_ty2(4)
print*,obj_tata%ptr_ty%real1
END PROGRAM
