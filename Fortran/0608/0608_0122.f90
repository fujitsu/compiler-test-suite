MODULE mod1
IMPLICIT NONE
    INTEGER:: a = 2, b = 5, c = 3, counter = 0
    TYPE ty
    INTEGER :: ii = 10, jj = 10
    CONTAINS
         FINAL::dest_ty
    END TYPE

    TYPE ty1
        INTEGER :: kk = 20
        TYPE(ty):: ty_cmp(2)
    CONTAINS
        FINAL::dest_ty1
    END TYPE

    CONTAINS
        SUBROUTINE dest_ty(dmy )
            IMPLICIT NONE
            TYPE(ty), INTENT(INOUT):: dmy
            counter = counter + 1
            IF ( dmy%ii .EQ. (100*counter) ) THEN
               PRINT*, counter,' 1st-destructor call PASS ', dmy%ii
            ELSE
               PRINT*, counter,' 1st-destructor call FAIL ', dmy%ii
            END IF
        END SUBROUTINE
        SUBROUTINE dest_ty1( dmy )
            IMPLICIT NONE
            TYPE(ty1), INTENT(INOUT):: dmy
            counter = counter + 1
            IF ( dmy%kk .EQ. (100*counter) ) THEN
               PRINT*, counter,' 2nd-destructor call PASS ', dmy%kk
            ELSE
               PRINT*, counter,' 2nd-destructor call FAIL ', dmy%kk
            END IF
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    TYPE(ty):: ty_obj(3)
    INTERFACE ASSIGNMENT(=)
        SUBROUTINE assin(L, R)
        IMPORT ty
        TYPE(ty), INTENT(OUT) :: L
        TYPE(ty), INTENT(IN) :: R
        END
    END INTERFACE
    ty_obj(2)%ii = 200
    ty_obj(3)%ii = 100
    ty_obj(3) = ty_obj(2)
 END PROGRAM

SUBROUTINE assin(L, R)
 use mod1
 TYPE(ty), INTENT(OUT) :: L
 TYPE(ty), INTENT(IN) :: R
 L%ii = R%ii + R%ii *2
 L%jj = R%jj + R%jj *2
END
