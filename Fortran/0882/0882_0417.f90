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

CLASS(ty2),POINTER::arrptr_ty2(:,:,:)

ALLOCATE(arrptr_ty2(7,8,9))
call sub(arrptr_ty2)
contains 

    SUBROUTINE sub(arrdmytar_ty2)
      CLASS(ty2),TARGET:: arrdmytar_ty2(2:,3:,3:)
      CLASS(*),POINTER::arrptr_ty1(:,:,:) => NULL()
      TYPE(ty2)::obj
      arrdmytar_ty2%kk=1
      arrdmytar_ty2%ll=2
      
      arrdmytar_ty2(2,3,3)%kk=10
      arrdmytar_ty2(2,3,3)%ll=20

      if(ASSOCIATED(arrptr_ty1)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

      arrptr_ty1=>arrdmytar_ty2

      if(ASSOCIATED(arrptr_ty1)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

      obj=arrdmytar_ty2(2,3,3)
      print*,obj%kk
      print*,obj%ll
    END SUBROUTINE

END PROGRAM
