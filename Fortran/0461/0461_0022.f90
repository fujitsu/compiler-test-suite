MODULE mod1
IMPLICIT NONE
  TYPE ty0
    INTEGER :: ii = 10
    CONTAINS
      FINAL::ty0_scalar_dest
      FINAL::ty0_array_dest
  END TYPE ty0

  TYPE ty1
    INTEGER :: jj = 20
    TYPE(ty0):: ty0_cmp
    CONTAINS
      FINAL::ty1_scalar_dest
      FINAL::ty1_array_dest
  END TYPE ty1

  CONTAINS
    SUBROUTINE ty0_scalar_dest( dmy )
      IMPLICIT NONE
      TYPE(ty0), INTENT(INOUT):: dmy
      PRINT*,' ty0_scalar_destructor CALL ',dmy%ii
    END SUBROUTINE ty0_scalar_dest

    SUBROUTINE ty0_array_dest( dmy )
      IMPLICIT NONE
      TYPE(ty0), INTENT(INOUT):: dmy(:)
      PRINT*,' ty0_array_destructor CALL ',dmy%ii
    END SUBROUTINE ty0_array_dest

    SUBROUTINE ty1_scalar_dest( dmy )
      IMPLICIT NONE
      TYPE(ty1), INTENT(INOUT):: dmy
      PRINT*,' ty1_scalar_destructor CALL ',dmy%jj
    END SUBROUTINE ty1_scalar_dest

    SUBROUTINE ty1_array_dest( dmy )
      IMPLICIT NONE
      TYPE(ty1), INTENT(INOUT):: dmy(:)
      PRINT*,' ty1_array_destructor CALL ',dmy%jj
    END SUBROUTINE ty1_array_dest
END MODULE mod1

PROGRAM MAIN
  USE mod1
  IMPLICIT NONE

  TYPE(ty1),allocatable :: ty1_obj(:)
  INTEGER :: i = 0
  ALLOCATE(ty1_obj, SOURCE = (/(Foo(i), i = 1, 3)/) )
print*, " ty1_array_destructor CALL  101 102 103"
print*, " ty0_scalar_destructor CALL  201"
print*, " ty0_scalar_destructor CALL  202"
print*, " ty0_scalar_destructor CALL  203"
  CONTAINS

    FUNCTION Foo(dmy) RESULT(ty1_res)
      IMPLICIT NONE
      INTEGER :: dmy
      TYPE(ty1) :: ty1_res
      ty1_res%jj = 100 + dmy
      ty1_res%ty0_cmp%ii = 200 + dmy
    END FUNCTION Foo
END PROGRAM MAIN
