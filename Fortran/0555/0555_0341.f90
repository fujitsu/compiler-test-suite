MODULE ty_MODULE
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

END MODULE

PROGRAM MAIN

use ty_MODULE 
 
TYPE tata
CLASS(*),POINTER::ptr_ty(:,:)
END TYPE

TYPE(tata)::obj_tata

ALLOCATE(ty1::obj_tata%ptr_ty(2,2))

      if(ASSOCIATED(obj_tata%ptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif

obj_tata%ptr_ty=>NULL()

      if(ASSOCIATED(obj_tata%ptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif
 
END PROGRAM
