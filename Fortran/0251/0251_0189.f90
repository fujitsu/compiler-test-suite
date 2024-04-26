MODULE mod1
IMPLICIT NONE
    TYPE ty
        INTEGER :: ii = 10
        CONTAINS
            FINAL::dest
    END TYPE ty

    CONTAINS
        SUBROUTINE dest( dmy )
            IMPLICIT NONE
            TYPE(ty), INTENT(INOUT):: dmy
              PRINT*,'dest: ',dmy%ii
        END SUBROUTINE dest

END MODULE mod1

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE

    BLOCK
    type(ty) :: oo
    oo=Foo()
    if(oo%ii .eq. 20) print*,101
    ENDBLOCK

    CONTAINS
        FUNCTION Foo() RESULT(ty_res)
         IMPLICIT NONE
         TYPE(ty) :: ty_res
         ty_res%ii = 100
         IF (ty_res%ii .EQ. 20)  PRINT*,'ERROR'
        END FUNCTION Foo
END PROGRAM MAIN
