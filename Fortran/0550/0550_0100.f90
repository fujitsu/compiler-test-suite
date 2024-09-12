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
 
CLASS(ty1),POINTER::ptr_ty1(:,:,:)
call sub(ptr_ty1)
contains
 
    SUBROUTINE sub(dmy_ty1)
      CLASS(ty1),POINTER:: dmy_ty1(:,:,:)
      TYPE tata
        CLASS(*),POINTER::ptr_ty(:,:,:) => null()
      END TYPE
      TYPE(tata)::obj_tata
    
      ALLOCATE(dmy_ty1(3,4,5))

      dmy_ty1%real1=10

      if(ASSOCIATED(obj_tata%ptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif

      obj_tata%ptr_ty=>dmy_ty1

      if(ASSOCIATED(obj_tata%ptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif

    END SUBROUTINE
 
END PROGRAM
