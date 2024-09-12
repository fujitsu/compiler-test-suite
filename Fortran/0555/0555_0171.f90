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

CLASS(ty),POINTER::ptr_ty
call sub(ptr_ty)
contains 

    SUBROUTINE sub(dmyptr_ty)
      CLASS(ty),POINTER:: dmyptr_ty
      TYPE con
        TYPE(ty2),POINTER::ptr_ty2
        INTEGER(KIND=8)::oo
      END TYPE
      TYPE(con)::obj
    
      ALLOCATE(obj%ptr_ty2)
      obj%ptr_ty2%real1=3
      dmyptr_ty=>obj%ptr_ty2      
      print*,dmyptr_ty%real1
    END SUBROUTINE

END PROGRAM
