MODULE mod1
IMPLICIT NONE
    INTEGER :: counter = 0
    TYPE ty
     INTEGER :: ii = 10
     CONTAINS
         FINAL::dest
    END TYPE

    TYPE ty1
        TYPE(ty), ALLOCATABLE:: ty_cmp
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
    TYPE(ty1):: ty1_obj
    INTEGER :: i
    ALLOCATE(ty1_obj%ty_cmp)
    ty1_obj%ty_cmp%ii = 100
    DO i = Foo(ty1_obj%ty_cmp), 1
       IF(i .EQ. 2) PRINT*, 'ERROR'
    END DO
    DEALLOCATE(ty1_obj%ty_cmp)

    CONTAINS
        INTEGER FUNCTION Foo( ty_dmy )
            TYPE(ty), ASYNCHRONOUS, INTENT(OUT):: ty_dmy
            ty_dmy%ii = 200
            Foo = 1
            IF (ty_dmy%ii .EQ. 10)  PRINT*,'ERROR'
        END FUNCTION
END PROGRAM
