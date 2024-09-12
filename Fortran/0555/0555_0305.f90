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

TYPE con
    CLASS(*),POINTER::arrptr_ty2(:,:)
    INTEGER(KIND=8)::oo
END TYPE

type(con) ::obj
CLASS(*),POINTER::arrptr_ty(:,:) => null()

ALLOCATE(ty1::obj%arrptr_ty2(5,7))

      if(ASSOCIATED(arrptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

arrptr_ty=>obj%arrptr_ty2  

      if(ASSOCIATED(arrptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

END PROGRAM

