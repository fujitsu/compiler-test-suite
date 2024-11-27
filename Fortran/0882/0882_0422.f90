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
 
TYPE cha 
 CLASS(*),POINTER:: ptr_ty=>NULL()
END TYPE

TYPE(cha)::obj_cha
CLASS(ty2),POINTER :: ptr_ty2

ALLOCATE(ty2::ptr_ty2)

      if(ASSOCIATED(obj_cha%ptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif
 
obj_cha%ptr_ty=>ptr_ty2

      if(ASSOCIATED(obj_cha%ptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif

END PROGRAM
