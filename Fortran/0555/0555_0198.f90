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

CLASS(ty),POINTER::arrptr_ty(:,:,:,:)
call sub(arrptr_ty)
contains 

    SUBROUTINE sub(arrdmyptr_ty)
      CLASS(ty),POINTER:: arrdmyptr_ty(:,:,:,:)
      TYPE(ty2),POINTER::arrptr_ty2(:,:,:,:)
      ALLOCATE(arrptr_ty2(5,5,5,5))
      arrptr_ty2%real1=3
      arrptr_ty2(2:5,1:4,3:5,1:3)%real1=90
      arrdmyptr_ty=>arrptr_ty2(2:5,1:4,3:5,1:3)      
      print*,arrdmyptr_ty%real1
    END SUBROUTINE

END PROGRAM
