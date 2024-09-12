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
            TYPE(ty), INTENT(INOUT):: dmy
              PRINT*,dmy%ii
        END SUBROUTINE destructor

END MODULE mod1

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE

    TYPE(ty) :: ty_rlt
    ty_rlt = Foo()
    IF(ty_rlt%ii .EQ. 20) PRINT*, ty_rlt%ii
    CONTAINS
        FUNCTION Foo() RESULT(ty_res)
         IMPLICIT NONE
         TYPE(ty) :: ty_res
         ty_res%ii = 100
         IF (ty_res%ii .EQ. 20)  PRINT*,'ERROR'
        END FUNCTION Foo
END PROGRAM MAIN