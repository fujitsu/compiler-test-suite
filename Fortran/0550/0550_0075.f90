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
call sub(arrptr_ty2)
contains 

    SUBROUTINE sub(arrdmyptr_ty2)
      CLASS(ty2),POINTER:: arrdmyptr_ty2(:,:,:)
      CLASS(ty1),POINTER::arrptr_ty1(:,:,:)
      TYPE(ty1)::obj
      ALLOCATE(arrdmyptr_ty2(1:6,3:6,3:6))
      arrdmyptr_ty2%kk=1
      arrdmyptr_ty2%ll=2

      arrdmyptr_ty2(1,3,3)%kk=10
      arrdmyptr_ty2(1,3,3)%ll=20

      arrptr_ty1=>arrdmyptr_ty2
      obj=arrptr_ty1(1,3,3)
      print*,obj%kk
      print*,obj%ll
    END SUBROUTINE

END PROGRAM
