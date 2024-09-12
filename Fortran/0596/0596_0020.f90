 MODULE mod1
         IMPLICIT NONE

         type ty0
         integer,allocatable :: i1
         CONTAINS
           FINAL::des0_scalar
         end type

        TYPE type1
        INTEGER :: hh=1
        type(ty0),allocatable :: ty0_cmp
        INTEGER,allocatable :: m
        CONTAINS
          FINAL::des1_scalar
        END TYPE

          CONTAINS
        SUBROUTINE des1_scalar(dmy)
          TYPE(type1),INTENT(INOUT)::dmy
           PRINT*,'des1_scalar destructor called',dmy%ty0_cmp%i1
        END SUBROUTINE

        SUBROUTINE des0_scalar(dmy)
          TYPE(ty0),INTENT(INOUT)::dmy
           PRINT*,'des0_scalar destructor called',dmy%i1
        END SUBROUTINE

        END MODULE

        PROGRAM MAIN
        USE mod1
        CALL SUB
        contains
        SUBROUTINE SUB
        IMPLICIT NONE
        TYPE(type1),TARGET::tar_ty1
        allocate(tar_ty1%ty0_cmp)
        allocate(tar_ty1%ty0_cmp%i1)
        tar_ty1%ty0_cmp%i1 = 2

        END SUBROUTINE
        END
