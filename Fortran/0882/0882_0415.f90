MODULE ty_MODULE
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
 
END MODULE

PROGRAM MAIN

USE ty_MODULE

TYPE(ty2),POINTER::arrptr_ty2(:)

ALLOCATE(arrptr_ty2(5))
call sub(arrptr_ty2)
contains 

    SUBROUTINE sub(arrdmyptr_ty2)
      type(ty2),target:: arrdmyptr_ty2(5)
      CLASS(*) ,pointer::arrptr_ty1(:) => NULL()
      arrdmyptr_ty2%kk=1
      arrdmyptr_ty2%ll=2

      if(ASSOCIATED(arrptr_ty1)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

      arrptr_ty1=>arrdmyptr_ty2

      if(ASSOCIATED(arrptr_ty1)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

    END SUBROUTINE

END PROGRAM
