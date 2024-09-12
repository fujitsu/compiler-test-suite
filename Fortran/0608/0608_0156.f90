MODULE mod1
IMPLICIT NONE
  TYPE ty
    INTEGER :: ii = 10
    CONTAINS
      FINAL::ty_dest
  END TYPE ty

  TYPE ty1
    TYPE(ty), POINTER :: ty_obj
    INTEGER :: jj = 20
    CONTAINS
      FINAL::ty1_dest
  END TYPE ty1

  CONTAINS
    SUBROUTINE ty_dest( dmy )
      IMPLICIT NONE
      TYPE(ty), INTENT(INOUT):: dmy
      PRINT*,'its ty_dest->',dmy%ii
    END SUBROUTINE ty_dest

    SUBROUTINE ty1_dest(dmy)
      IMPLICIT NONE
      TYPE(ty1), INTENT(INOUT)::dmy
      PRINT*,'its ty1_dest->', dmy%jj
     END SUBROUTINE ty1_dest

END MODULE mod1

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE

    TYPE(ty1) :: ty1_rlt
    ALLOCATE(ty1_rlt%ty_obj)
    ty1_rlt = Foo()
    CONTAINS
        FUNCTION Foo() RESULT(ty1_res)
            IMPLICIT NONE
            TYPE(ty1) :: ty1_res
            ALLOCATE(ty1_res%ty_obj)
            ty1_res%ty_obj%ii = 100
            ty1_res%jj = 200
            IF (ty1_res%jj .EQ. 20)  PRINT*,'ERROR'
        END FUNCTION Foo
END PROGRAM MAIN