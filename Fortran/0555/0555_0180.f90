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

TYPE(ty2),POINTER::ptr_ty2
call sub(ptr_ty2)
contains 

    SUBROUTINE sub(dmyptr_ty2)
      TYPE(ty2),POINTER:: dmyptr_ty2
      CLASS(ty1),POINTER::ptr_ty1
      TYPE(ty1)::obj

  
      ALLOCATE(dmyptr_ty2)
      dmyptr_ty2%kk=10
      dmyptr_ty2%ll=20
      ptr_ty1=>dmyptr_ty2
      obj=ptr_ty1
      print*,obj%kk
      print*,obj%ll
    END SUBROUTINE

END PROGRAM
