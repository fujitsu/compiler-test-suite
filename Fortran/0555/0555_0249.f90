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

 
CLASS(*),POINTER:: ptr_ty1 => null()
TYPE(ty2),TARGET :: arrtar_ty2(10)

arrtar_ty2(1:10)%jj = 10
arrtar_ty2(8)%jj = 200

if(ASSOCIATED(ptr_ty1)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED'
endif

ptr_ty1=>arrtar_ty2(8)

if(ASSOCIATED(ptr_ty1)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED'
endif

END PROGRAM
