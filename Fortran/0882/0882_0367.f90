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

TYPE(ty2),POINTER::arrptr_ty2(:,:,:)
call sub(arrptr_ty2)
contains 

    SUBROUTINE sub(arrdmyptr_ty2)
      TYPE(ty2),POINTER:: arrdmyptr_ty2(:,:,:)
      CLASS(ty1),POINTER::arrptr_ty1(:,:,:)
      TYPE(ty1)::obj
      ALLOCATE(arrdmyptr_ty2(2:5,3:5,3:5))
      arrdmyptr_ty2%kk=1
      arrdmyptr_ty2%ll=2
      
      arrdmyptr_ty2(2,3,4)%kk=10
      arrdmyptr_ty2(2,3,4)%ll=20

      arrptr_ty1=>arrdmyptr_ty2
      obj=arrptr_ty1(2,3,4)
      print*,obj%kk
      print*,obj%ll
    END SUBROUTINE

END PROGRAM
