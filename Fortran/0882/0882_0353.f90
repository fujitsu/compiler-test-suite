MODULE mod3
 
IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv1
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE
 
TYPE ,EXTENDS(deriv1)::deriv2
  CHARACTER(LEN=8) :: name1
  TYPE(deriv1),POINTER::ptr1_deriv1
  REAL(KIND=8) ::real3
END TYPE
 
TYPE ,EXTENDS(deriv2)::deriv3
  CHARACTER(LEN=8)::name2
  TYPE(deriv2)::obj1_deriv2
  INTEGER(KIND=8) :: int3
  REAL(KIND=8) ::real4
END TYPE
 
TYPE ,EXTENDS(deriv3)::deriv4
  INTEGER(KIND=8) :: int4
  REAL(KIND=8) ::real5
END TYPE
 
END MODULE

PROGRAM MAIN
 
use mod3
 
CLASS(*),ALLOCATABLE,TARGET::from_obj(:)
call sub(from_obj)
contains
  SUBROUTINE sub(dmy_obj)
    CLASS(*),ALLOCATABLE,TARGET::dmy_obj(:)
    CLASS(*),ALLOCATABLE::to_obj(:)

    ALLOCATE(deriv4::dmy_obj(2))    

    if(ALLOCATED(to_obj)) then
      print*,'before move_alloc to_obj is allocated'
    else
     print*,'before move_alloc to_obj is not allocated yet'
    endif

    CALL MOVE_ALLOC(dmy_obj,to_obj)

    if(ALLOCATED(to_obj)) then
      print*,'after move_alloc to_obj is allocated'
    else
      print*,'after move_alloc to_obj is not allocated'
    endif

  END SUBROUTINE
 
END
