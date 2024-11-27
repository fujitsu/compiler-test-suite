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


CLASS(*),ALLOCATABLE,TARGET::from_obj
CLASS(*),ALLOCATABLE::to_obj

ALLOCATE(ty2::from_obj)

   if(ALLOCATED(to_obj)) then
     print*,'before move_alloc to_obj is allocated'
   else
     print*,'before move_alloc to_obj is not allocated'
   endif

CALL MOVE_ALLOC(from_obj,to_obj)

   if(ALLOCATED(to_obj)) then
     print*,'after move_alloc to_obj is allocated'
   else
     print*,'after move_alloc to_obj is not allocated'
   endif

END
