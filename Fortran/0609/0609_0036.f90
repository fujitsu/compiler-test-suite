MODULE mod1
IMPLICIT NONE
    INTEGER :: a = 2, b = 5, c = 3, counter = 0
    TYPE ty
        INTEGER :: ii = 10
        CONTAINS
           FINAL::dest_2Darr
           FINAL::dest_arr
           FINAL::dest
     END TYPE

     TYPE ty1
        INTEGER :: jj = 20
        TYPE(ty):: ty_cmp(2)
     END TYPE

    CONTAINS
        SUBROUTINE dest_2Darr(dmy)
            TYPE(ty), INTENT(INOUT):: dmy(:,:)
            counter = counter + 1
            IF ( dmy(1, 1)%ii .EQ. (100*counter) ) THEN
                PRINT*, counter,' 1st-destructor call PASS ', dmy
            ELSE
                PRINT*, counter,' 1st-destructor call FAIL ', dmy
            END IF
        END SUBROUTINE
        SUBROUTINE dest_arr(dmy)
            TYPE(ty), INTENT(INOUT):: dmy(:)
            counter = counter + 1
            IF ( dmy(1)%ii .EQ. (100*counter) ) THEN
                PRINT*, counter,' 2nd-destructor call PASS ', dmy
            ELSE
                PRINT*, counter,' 2nd-destructor call FAIL ', dmy
            END IF
        END SUBROUTINE
        SUBROUTINE dest(dmy)
            TYPE(ty), INTENT(INOUT):: dmy
            counter = counter + 1
            IF ( dmy%ii .EQ. (100*counter) ) THEN
                PRINT*, counter,' 3rd-destructor call PASS ', dmy
            ELSE
                PRINT*, counter,' 3rd-destructor call FAIL ', dmy
            END IF
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    INTEGER :: m = 2, n = 2
    CALL Foo(m, n)
    CONTAINS
        SUBROUTINE Foo( m_dmy, n_dmy )
            INTEGER, INTENT(IN):: m_dmy, n_dmy
            TYPE(ty1) :: ty1_obj(m_dmy, n_dmy)
            ty1_obj(1, 1)%ty_cmp%ii = 100
            ty1_obj(2, 1)%ty_cmp%ii = 200
            ty1_obj(1, 2)%ty_cmp%ii = 600
            ty1_obj(2, 2)%ty_cmp%ii = 700
            CALL Foo1(ty1_obj)
        END SUBROUTINE
        SUBROUTINE Foo1( ty1_dmy1 )
            class(ty1), INTENT(OUT):: ty1_dmy1(2:2, 2:3)
            ty1_dmy1(2, 2)%ty_cmp%ii = 300
            ty1_dmy1(2, 3)%ty_cmp%ii = 500
            CALL Foo2( ty1_dmy1(2, 2)%ty_cmp )
        END SUBROUTINE
        SUBROUTINE Foo2( ty_dmy2)
            class(ty), INTENT(OUT):: ty_dmy2(1:1, 1:2)
            ty_dmy2(1,1)%ii = 400
            ty_dmy2(1,2)%ii = 400
        END SUBROUTINE
END PROGRAM
