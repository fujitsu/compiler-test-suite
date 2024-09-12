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

CLASS(ty),POINTER::arrptr_ty(:,:)
call sub(arrptr_ty)
contains 

    SUBROUTINE sub(arrdmyptr_ty)
      CLASS(ty),POINTER:: arrdmyptr_ty(:,:)
      TYPE con
        TYPE(ty2),POINTER::arrptr_ty2(:,:)
        INTEGER(KIND=8)::oo
      END TYPE
      TYPE(con)::obj

      allocate(obj%arrptr_ty2(4,4))  
      obj%arrptr_ty2%real1=3
      obj%arrptr_ty2(2,4)%real1=4
      arrdmyptr_ty=>obj%arrptr_ty2      
      print*,arrdmyptr_ty(2,4)%real1
    END SUBROUTINE

END PROGRAM
