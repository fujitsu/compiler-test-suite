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

CLASS(*),POINTER::arrptr_ty(:,:)=>null()
call sub(arrptr_ty)
contains 

    SUBROUTINE sub(arrdmyptr_ty)
      CLASS(*),POINTER:: arrdmyptr_ty(:,:)
      TYPE con
        CLASS(ty2),POINTER::arrptr_ty2(:,:)
        INTEGER(KIND=8)::oo
      END TYPE

      TYPE(con)::obj
       
      ALLOCATE(obj%arrptr_ty2(2,2)) 
      obj%arrptr_ty2%real1=3

      if(ASSOCIATED(arrdmyptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

      arrdmyptr_ty=>obj%arrptr_ty2  

      if(ASSOCIATED(arrdmyptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

    END SUBROUTINE

END PROGRAM