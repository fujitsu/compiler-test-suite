PROGRAM MAIN

IMPLICIT NONE
 
TYPE ty
  CHARACTER(LEN=8)::ii
  REAL(KIND=8)::jj
END TYPE
 
TYPE ,EXTENDS(ty)::ty1
  INTEGER(KIND=8) :: kk
  REAL(KIND=8) ::ll
END TYPE 

TYPE ,EXTENDS(ty1)::ty2
  CHARACTER(LEN=4) ::mm
  INTEGER(KIND=4)::nn
END TYPE 

TYPE con
  CHARACTER(LEN=4)::oo
  TYPE(ty2),POINTER::arrptr_ty2(:,:,:,:)
  INTEGER(kind=4)::pp
END TYPE

CLASS(*),POINTER:: arrptr_ty(:,:,:,:) => NULL()
type(con) :: obj

ALLOCATE(obj%arrptr_ty2(6,6,6,6))
obj%arrptr_ty2%ii='testing'
obj%arrptr_ty2(1:6:2,1:6:2,1:6:2,1:6:2)%ii='tested'

      if(ASSOCIATED(arrptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

arrptr_ty=>obj%arrptr_ty2

      if(ASSOCIATED(arrptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

END PROGRAM
