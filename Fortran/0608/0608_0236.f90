MODULE mod1
IMPLICIT NONE
    INTEGER :: counter = 0
    TYPE ty
     INTEGER :: ii = 10
     CONTAINS
         FINAL::dest_arr
         FINAL::dest
    END TYPE

    TYPE ty1
        TYPE(ty), POINTER:: ty_cmp
    END TYPE

    CONTAINS
        SUBROUTINE dest_arr( dmy )
            TYPE(ty), INTENT(INOUT):: dmy(:)
        END SUBROUTINE
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
    TYPE(ty1):: ty1_obj
    ALLOCATE(ty1_obj%ty_cmp)
    ty1_obj%ty_cmp%ii = 100
    IF( Foo(ty1_obj%ty_cmp) ) PRINT*,'FAIL'

    CONTAINS
        LOGICAL FUNCTION Foo( ty_dmy )
            TYPE(ty), VOLATILE, INTENT(OUT):: ty_dmy
            ty_dmy%ii = 200
            Foo = .FALSE.
            IF (ty_dmy%ii .EQ. 20)  PRINT*,'ERROR'
        END FUNCTION
END PROGRAM

