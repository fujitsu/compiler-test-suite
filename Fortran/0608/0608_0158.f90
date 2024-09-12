MODULE mod1
IMPLICIT NONE
    TYPE ty
        INTEGER :: ii = 10
        CONTAINS
            FINAL::destructor
    END TYPE ty

    CONTAINS
        SUBROUTINE destructor( dmy )
            IMPLICIT NONE
            TYPE(ty), INTENT(INOUT):: dmy(:)
            INTEGER :: i, j
            j = UBOUND(dmy, 1)
            DO i = 1, j, 1
               PRINT*,dmy(i)%ii
            END DO
        END SUBROUTINE destructor

END MODULE mod1

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE

    TYPE(ty), ALLOCATABLE :: ty_rlt(:)
    ALLOCATE(ty_rlt(2))
    ty_rlt = Foo()
    DEALLOCATE(ty_rlt)
    CONTAINS
        FUNCTION Foo() RESULT(ty_res)
            IMPLICIT NONE
            TYPE(ty), ALLOCATABLE :: ty_res(:)
            ALLOCATE(ty_res(2))
            ty_res%ii = 100
            IF (ty_res(1)%ii .EQ. 20)  PRINT*,'ERROR'
        END FUNCTION Foo
END PROGRAM MAIN
