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

  TYPE(ty1), ALLOCATABLE :: ty1_obj(:)
  ALLOCATE(ty1_obj(2), SOURCE = Foo())

  CONTAINS
    FUNCTION Foo() RESULT(ty1_res)
      IMPLICIT NONE
      TYPE(ty1) :: ty1_res(2)
      ty1_res(1)%jj = 100
      ty1_res(2)%jj = 100
      ty1_res(1)%ty0_cmp%ii = 200
      ty1_res(2)%ty0_cmp%ii = 200
    END FUNCTION Foo
END PROGRAM MAIN
