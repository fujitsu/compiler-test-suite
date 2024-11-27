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

use ty_MODULE 
 
CLASS(*),ALLOCATABLE::from_obj
CLASS(*),ALLOCATABLE::to_obj
call sub(from_obj,to_obj)
contains

  SUBROUTINE sub(dmy_from,dmy_to)
    CLASS(*),ALLOCATABLE::dmy_from
    CLASS(*),ALLOCATABLE::dmy_to
 
    ALLOCATE(ty2::dmy_from)

   if(ALLOCATED(dmy_to)) then
     print*,'before move_alloc to_obj is allocated'
   else
     print*,'before move_alloc to_obj is not allocated yet'
   endif

    CALL MOVE_ALLOC(dmy_from,dmy_to)

   if(ALLOCATED(dmy_to)) then
     print*,'after move_alloc to_obj is allocated'
   else
     print*,'after move_alloc to_obj is not allocated'
   endif

  END SUBROUTINE
 
END
