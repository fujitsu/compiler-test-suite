MODULE mod1
IMPLICIT NONE
    INTEGER :: counter = 0
    TYPE ty
     INTEGER :: ii = 10
     CONTAINS
         FINAL::dest
    END TYPE

    TYPE ty1
        CLASS(ty),ALLOCATABLE:: ty_cmp
    END TYPE

    CONTAINS
        SUBROUTINE dest( dmy )
            IMPLICIT NONE
            TYPE(ty), INTENT(INOUT):: dmy
            counter = counter + 1
            IF ( dmy%ii .EQ. (100*counter)) THEN
                PRINT*, counter,' destructor call PASS ', dmy%ii
            ELSE
                PRINT*, counter,' destructor call FAIL ', dmy%ii
            END IF
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    TYPE(ty1) :: ty1_obj
    ALLOCATE(ty1_obj%ty_cmp)
    ty1_obj%ty_cmp%ii = 100
    CALL Foo(ty1_obj%ty_cmp)

    CONTAINS
        SUBROUTINE Foo( ty_dmy )
            CLASS(ty),INTENT(OUT):: ty_dmy
            ty_dmy%ii = 200
            IF (ty_dmy%ii .EQ. 20)  PRINT*,'ERROR'
        END SUBROUTINE
 END PROGRAM
