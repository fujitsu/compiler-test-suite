PROGRAM MAIN
 
IMPLICIT NONE
 
TYPE ty
  INTEGER(KIND=8) ::ii
  INTEGER(KIND=4)::jj
  REAL(KIND=4)::real1
END TYPE
 
TYPE ,EXTENDS(ty)::ty1
  INTEGER(KIND=8) :: kk
  REAL(KIND=8) ::ll
END TYPE
 
 
TYPE ,EXTENDS(ty1)::ty2
  INTEGER(KIND=8) ::mm
  TYPE(ty1)::obj2
  INTEGER(KIND=8)::nn
END TYPE
 
TYPE tata
CLASS(ty),POINTER::ptr_ty(:,:,:)
END TYPE

TYPE(tata)::obj_tata
obj_tata%ptr_ty=>NULL()

if(ASSOCIATED(obj_tata%ptr_ty)) then
 print*,'fail'
else
 print*,'success'
end if 
END PROGRAM
