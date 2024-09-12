MODULE mod1
    INTEGER :: a = 2, b = 5, c = 3, counter = 0
    TYPE ty
    INTEGER :: ii = 10
    CONTAINS
         FINAL::dest_arr
         FINAL::dest
    END TYPE

    CONTAINS
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
    TYPE(ty)  :: ty_obj(5)
    ty_obj%ii = 100
    CALL Foo(ty_obj)
    CONTAINS
         SUBROUTINE Foo( ty_dmy )
            TYPE(ty), INTENT(OUT):: ty_dmy(:)
            ty_dmy(2)%ii = 200
            CALL Foo1(ty_dmy(2))
        END SUBROUTINE
        SUBROUTINE Foo1( ty_dmy1 )
            TYPE(ty), INTENT(OUT):: ty_dmy1
            ty_dmy1%ii = 300
            CALL Foo2(ty_dmy1)
         END SUBROUTINE
         SUBROUTINE Foo2( ty_dmy2)
            TYPE(ty), INTENT(OUT):: ty_dmy2
            ty_dmy2%ii = 400
         END SUBROUTINE
 END PROGRAM
