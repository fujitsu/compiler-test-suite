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

    CONTAINS
        SUBROUTINE dest_2Darr(dmy)
            TYPE(ty), INTENT(INOUT):: dmy(:,:)
            counter = counter + 1 
            IF ( dmy(1,1)%ii .EQ. (100*counter) ) THEN
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
    TYPE(ty), ALLOCATABLE :: ty_obj(:,:)
    ALLOCATE(ty_obj(2, 3))
    ty_obj(1, 1)%ii = 100
    ty_obj(2, 1)%ii = 100
    ty_obj(1, 2)%ii = 100
    ty_obj(2, 2)%ii = 100
    CALL Foo(ty_obj)
    DEALLOCATE(ty_obj)
    CONTAINS
        SUBROUTINE Foo( ty_dmy )
            CLASS(ty), INTENT(OUT):: ty_dmy(a:3, a:c)
            ty_dmy(a, 2)%ii = 200
            CALL Foo1(ty_dmy(a, a))
        END SUBROUTINE
        SUBROUTINE Foo1( ty_dmy1 )
            CLASS(*), INTENT(OUT):: ty_dmy1
            SELECT TYPE(ty_dmy1)
              TYPE IS(ty)
              ty_dmy1%ii = 300
              CALL Foo2(ty_dmy1)
            END SELECT
        END SUBROUTINE
        SUBROUTINE Foo2( ty_dmy2)
            CLASS(*), INTENT(OUT):: ty_dmy2
            SELECT TYPE(ty_dmy2)
              TYPE IS(ty)
                ty_dmy2%ii = 400
            END SELECT
        END SUBROUTINE
 END PROGRAM
