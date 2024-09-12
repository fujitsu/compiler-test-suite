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
 
TYPE(ty1),POINTER::ptr_ty1(:,:,:)

allocate(ptr_ty1(4,4,4))
call sub(ptr_ty1)

contains
 
    SUBROUTINE sub(dmytar_ty1)
      TYPE(ty1),TARGET:: dmytar_ty1(:,:,:)
      TYPE tata
	CLASS(ty),POINTER::ptr_ty(:,:,:)
      END TYPE

      TYPE(tata)::obj_tata

      dmytar_ty1%real1=10
      dmytar_ty1(2,2,2)%real1 = 10

      obj_tata%ptr_ty=>dmytar_ty1

      print*,obj_tata%ptr_ty(2,2,2)%real1

    END SUBROUTINE
 
END PROGRAM
