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

TYPE(ty2),TARGET::tar_ty2(4)
tar_ty2%kk=10
tar_ty2%ll=20

tar_ty2(3)%kk=30
tar_ty2(3)%ll=40

call sub(tar_ty2(3))
contains 

    SUBROUTINE sub(dmytar_ty2)
      TYPE(ty2),TARGET:: dmytar_ty2
      CLASS(ty1),POINTER::ptr_ty1
      TYPE(ty1)::obj
      dmytar_ty2%kk=10
      dmytar_ty2%ll=20
      ptr_ty1=>dmytar_ty2
      obj=ptr_ty1
      print*,obj%kk
      print*,obj%ll
    END SUBROUTINE

END PROGRAM
