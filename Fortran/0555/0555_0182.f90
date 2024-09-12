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

CLASS(ty1),POINTER::ptr_ty1
call sub(ptr_ty1)
contains 

    SUBROUTINE sub(dmyptr_ty1)
      CLASS(ty1),POINTER:: dmyptr_ty1
      CLASS(ty),POINTER::ptr_ty

      ALLOCATE(dmyptr_ty1)
      dmyptr_ty1%real1=10
      ptr_ty=>dmyptr_ty1
      print*,ptr_ty%real1
    END SUBROUTINE

END PROGRAM
