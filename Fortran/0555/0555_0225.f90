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
allocate(ptr_ty1)
call sub(ptr_ty1)
contains
 
    SUBROUTINE sub(dmytar_ty1)
      CLASS(ty1),TARGET:: dmytar_ty1
      TYPE tata
      CLASS(ty),POINTER::ptr_ty
      END TYPE

      TYPE(tata)::obj_tata
      dmytar_ty1%real1=10.76
      obj_tata%ptr_ty=>dmytar_ty1
      print*,obj_tata%ptr_ty%real1
    END SUBROUTINE
 
END PROGRAM
