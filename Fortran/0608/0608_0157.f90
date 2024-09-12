MODULE mod1
IMPLICIT NONE
  TYPE ty
    INTEGER :: ii = 10
      CONTAINS
        FINAL::ty_dest
  END TYPE ty

  TYPE ty1
    TYPE(ty), ALLOCATABLE :: ty_obj
    INTEGER :: jj = 20
    CONTAINS
      FINAL::ty1_dest
  END TYPE ty1

  CONTAINS
    SUBROUTINE ty_dest( dmy )
      IMPLICIT NONE
      TYPE(ty), INTENT(INOUT):: dmy
      PRINT*,'ty_dest..->',dmy%ii
    END SUBROUTINE ty_dest

    SUBROUTINE ty1_dest(dmy)
      IMPLICIT NONE
      TYPE(ty1), INTENT(INOUT)::dmy
      PRINT*,'ty1_des..->', dmy%jj
    END SUBROUTINE ty1_dest

END MODULE mod1

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    TYPE(ty1), ALLOCATABLE :: ty1_rlt
    ALLOCATE(ty1_rlt)
    ALLOCATE(ty1_rlt%ty_obj)
    ty1_rlt = Foo()
    DEALLOCATE(ty1_rlt)
    CONTAINS
        FUNCTION Foo() RESULT(ty1_res)
            IMPLICIT NONE
            TYPE(ty1), ALLOCATABLE :: ty1_res
            ALLOCATE(ty1_res)
            ALLOCATE(ty1_res%ty_obj)
            ty1_res%jj = 200
            ty1_res%ty_obj%ii =  100
            IF (ty1_res%jj .EQ. 20)  PRINT*,'ERROR'
        END FUNCTION Foo
END PROGRAM MAIN
