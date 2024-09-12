MODULE mod1
IMPLICIT NONE
   INTEGER :: count1
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
      count1=count1+1
    END SUBROUTINE ty0_scalar_dest

    SUBROUTINE ty0_array_dest( dmy )
      IMPLICIT NONE
      TYPE(ty0), INTENT(INOUT):: dmy(:)
      count1=count1+2
    END SUBROUTINE ty0_array_dest

    SUBROUTINE ty1_scalar_dest( dmy )
      IMPLICIT NONE
      TYPE(ty1), INTENT(INOUT):: dmy
    END SUBROUTINE ty1_scalar_dest

    SUBROUTINE ty1_array_dest( dmy )
      IMPLICIT NONE
      TYPE(ty1), INTENT(INOUT):: dmy(:)
      count1=count1+4
    END SUBROUTINE ty1_array_dest
END MODULE mod1

PROGRAM MAIN
  USE mod1
  IMPLICIT NONE

  TYPE(ty1),allocatable :: ty1_obj(:)
  TYPE(ty1),allocatable :: ty1_obj2(:)
  INTEGER :: i = 0
  count1=0
  ALLOCATE(ty1_obj,ty1_obj2, SOURCE = (/(Foo(i), i = 1, 3)/) )

  if(any(ty1_obj(:)%jj.ne. (/101,102,103/))) print*,101
  if(any(ty1_obj2(:)%jj.ne. (/101,102,103/))) print*,102
  print*,"pass"
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
