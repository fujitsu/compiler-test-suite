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

 
CLASS(*),POINTER:: ptr_ty => NULL()
CLASS(ty2),POINTER :: arrptr_ty2(:)
allocate(arrptr_ty2(10))
arrptr_ty2(4)%nn=3
arrptr_ty2(4)%mm=3

if(ASSOCIATED(ptr_ty)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED'
endif

ptr_ty=>arrptr_ty2(4)

if(ASSOCIATED(ptr_ty)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED'
endif

END PROGRAM
