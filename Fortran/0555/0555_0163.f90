PROGRAM MAIN

IMPLICIT NONE
 
TYPE ty
  INTEGER(KIND=8) ::ii
  INTEGER(KIND=4)::jj
  TYPE(ty),POINTER::obj1
  REAL(KIND=4)::real1
END TYPE
 
TYPE ,EXTENDS(ty)::ty1
  INTEGER(KIND=8) :: kk
  REAL(KIND=8) ::ll
END TYPE 



TYPE ,EXTENDS(ty1)::ty2
  INTEGER(KIND=8) ::mm
  TYPE(ty1)::obj2
  INTEGER(KIND=4)::nn
END TYPE 

CLASS(ty),POINTER:: ptr_ty
CLASS(ty2),POINTER :: ptr_ty2
TYPE(ty)::test_obj

ALLOCATE(ptr_ty2)
ptr_ty2%real1=8.3
ptr_ty=>ptr_ty2
test_obj=ptr_ty

print*,test_obj%real1


END PROGRAM
