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
    TYPE(ty0), ALLOCATABLE:: ty0_cmp(:)
    CONTAINS
      FINAL::ty1_scalar_dest
      FINAL::ty1_array_dest
  END TYPE ty1

  CONTAINS
    SUBROUTINE ty0_scalar_dest( dmy )
      IMPLICIT NONE
      TYPE(ty0), INTENT(INOUT):: dmy
      write(1,*)dmy%ii
    END SUBROUTINE ty0_scalar_dest

    SUBROUTINE ty0_array_dest( dmy )
      IMPLICIT NONE
      TYPE(ty0), INTENT(INOUT):: dmy(:)
      write(1,*)dmy%ii
    END SUBROUTINE ty0_array_dest

    SUBROUTINE ty1_scalar_dest( dmy )
      IMPLICIT NONE
      TYPE(ty1), INTENT(INOUT):: dmy
      write(1,*)dmy%jj
    END SUBROUTINE ty1_scalar_dest

    SUBROUTINE ty1_array_dest( dmy )
      IMPLICIT NONE
      TYPE(ty1), INTENT(INOUT):: dmy(:)
      write(1,*)dmy%jj
    END SUBROUTINE ty1_array_dest
END MODULE mod1

PROGRAM MAIN
  USE mod1

  TYPE(ty1),allocatable :: ty1_obj(:)
  ALLOCATE(ty1_obj, SOURCE = (/Foo(1), Foo(2), Foo(3)/) )
rewind 1
read(1,*) k1,k2,k3
if (any([k1,k2,k3]/=[103,102,101]))print *,102
read(1,*) k1
if (any([k1]/=[203]))print *,112
read(1,*) k1
if (any([k1]/=[202]))print *,122
read(1,*) k1
if (any([k1]/=[201]))print *,132
print *,'pass'
  CONTAINS

    FUNCTION Foo(dmy) RESULT(ty1_res)
      IMPLICIT NONE
      INTEGER :: dmy
      TYPE(ty1), ALLOCATABLE :: ty1_res
      ALLOCATE(ty1_res)
      ALLOCATE(ty1_res%ty0_cmp(2))
      ty1_res%jj = 100 + dmy
      ty1_res%ty0_cmp%ii = 200 + dmy
    END FUNCTION Foo
END PROGRAM MAIN
