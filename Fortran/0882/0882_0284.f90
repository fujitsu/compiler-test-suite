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
 
CLASS(ty),ALLOCATABLE::to_obj
call sub(to_obj)
contains
  SUBROUTINE sub(dmy_obj)
    CLASS(ty),ALLOCATABLE,TARGET::dmy_obj
    CLASS(ty2),ALLOCATABLE,TARGET::from_obj
    TYPE(ty2),POINTER::ptr_ty2

    ALLOCATE(ty2::from_obj)
    from_obj%ii=3
    ptr_ty2=>from_obj
    CALL MOVE_ALLOC(from_obj,dmy_obj)
    print*,to_obj%ii

  END SUBROUTINE
 
END
