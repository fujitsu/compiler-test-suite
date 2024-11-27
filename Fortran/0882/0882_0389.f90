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

CLASS(ty1),POINTER::ptr_ty1

ALLOCATE(ptr_ty1)
call sub(ptr_ty1)
contains 

    SUBROUTINE sub(dmytar_ty1)
      CLASS(ty1),TARGET:: dmytar_ty1
      CLASS(*),POINTER::ptr_ty => NULL()
      dmytar_ty1%real1=10

      if(ASSOCIATED(ptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

      ptr_ty=>dmytar_ty1

      if(ASSOCIATED(ptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

    END SUBROUTINE

END PROGRAM
