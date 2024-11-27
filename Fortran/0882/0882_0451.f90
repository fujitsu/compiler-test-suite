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

ALLOCATE(ty1::ptr_ty1(3,4,5))
call sub(ptr_ty1)
contains
 
    SUBROUTINE sub(dmy_ty1)
      TYPE(ty1),TARGET:: dmy_ty1(3,4,5)
      TYPE tata
        CLASS(*),POINTER::ptr_ty(:,:,:) => NULL()
      END TYPE
      TYPE(tata)::obj_tata

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
