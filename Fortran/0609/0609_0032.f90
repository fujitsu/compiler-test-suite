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
        CLASS(ty), POINTER :: ty_cmp(:, :)
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
    TYPE(ty1) :: ty1_obj
    ALLOCATE(ty1_obj%ty_cmp(2, 2))
    ty1_obj%ty_cmp(1, 1)%ii = 100
    ty1_obj%ty_cmp(2, 1)%ii = 100
    ty1_obj%ty_cmp(1, 2)%ii = 100
    ty1_obj%ty_cmp(2, 2)%ii = 100
    CALL Foo(ty1_obj%ty_cmp)
    DEALLOCATE(ty1_obj%ty_cmp)
    CONTAINS
        SUBROUTINE Foo( ty_dmy )
            CLASS(ty), INTENT(OUT):: ty_dmy(a, 2)
            ty_dmy(a - 1, 2 - 1)%ii = 200
            CALL Foo1(ty_dmy(2 - 1, 2 - 1))
        END SUBROUTINE
        SUBROUTINE Foo1( ty_dmy1 )
            CLASS(ty), INTENT(OUT):: ty_dmy1
            ty_dmy1%ii = 300
            CALL Foo2(ty_dmy1)
        END SUBROUTINE
        SUBROUTINE Foo2( ty_dmy2)
            TYPE(ty), INTENT(OUT):: ty_dmy2
            ty_dmy2%ii = 400
        END SUBROUTINE
END PROGRAM
