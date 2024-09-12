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
        TYPE(ty), ALLOCATABLE :: ty_cmp(:, :)
     END TYPE

    CONTAINS
        SUBROUTINE dest_2Darr(dmy)
            TYPE(ty), INTENT(INOUT):: dmy(:,:)
            counter = counter + 1
            IF ( dmy(1, 1)%ii .EQ. (100*counter) ) THEN
                PRINT*, counter,' destructor call PASS ', dmy
            ELSE
                PRINT*, counter,' destructor call FAIL ', dmy
            END IF
        END SUBROUTINE
        SUBROUTINE dest_arr(dmy)
            TYPE(ty), INTENT(INOUT):: dmy(:)
            counter = counter + 1
            IF ( dmy(1)%ii .EQ. (100*counter) ) THEN
               PRINT*, counter,' destructor call PASS ', dmy
            ELSE
               PRINT*, counter,' destructor call FAIL ', dmy
            END IF
        END SUBROUTINE
        SUBROUTINE dest(dmy)
            TYPE(ty), INTENT(INOUT):: dmy
            counter = counter + 1
            IF ( dmy%ii .EQ. (100*counter) ) THEN
               PRINT*, counter,' destructor call PASS ', dmy
            ELSE
               PRINT*, counter,' destructor call FAIL ', dmy
            END IF
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    INTEGER :: m = 3, n = 2
    CALL Foo(m, n)
    CONTAINS
        SUBROUTINE Foo( m_dmy, n_dmy )
            INTEGER, INTENT(IN):: m_dmy, n_dmy
            TYPE(ty1) :: ty1_obj
            ALLOCATE(ty1_obj%ty_cmp(m_dmy, n_dmy))
            ty1_obj%ty_cmp(1, 1)%ii = 100
            ty1_obj%ty_cmp(2, 1)%ii = 100
            CALL Foo1(ty1_obj%ty_cmp)
        END SUBROUTINE
        SUBROUTINE Foo1( ty_dmy1 )
            TYPE(ty), INTENT(OUT):: ty_dmy1(2:2, 2:3)
            ty_dmy1(2, 2)%ii = 200
            CALL Foo2(ty_dmy1(2, 2))
        END SUBROUTINE
        SUBROUTINE Foo2( ty_dmy2)
            TYPE(ty), INTENT(OUT):: ty_dmy2
            ty_dmy2%ii = 300
        END SUBROUTINE
END PROGRAM
