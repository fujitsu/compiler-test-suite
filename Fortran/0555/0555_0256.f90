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

CLASS(*),POINTER::ptr_ty => null()
call sub(ptr_ty)
contains 

    SUBROUTINE sub(dmyptr_ty)
      CLASS(*),POINTER:: dmyptr_ty
      TYPE con
        TYPE(ty2),POINTER::ptr_ty2
        INTEGER(KIND=8)::oo
      END TYPE
      TYPE(con)::obj
      allocate(obj%ptr_ty2)
      obj%ptr_ty2%mm=3
      if(ASSOCIATED(dmyptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

      dmyptr_ty=>obj%ptr_ty2

      if(ASSOCIATED(dmyptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

    END SUBROUTINE

END PROGRAM
