MODULE mod1
IMPLICIT NONE
INTEGER :: i = 10, j = 5, counter = 0
    TYPE ty
    INTEGER :: ii = 10
    CONTAINS
         FINAL::dest_ele
         FINAL::dest_arr
    END TYPE

    CONTAINS
        ELEMENTAL SUBROUTINE dest_ele( dmy )
            TYPE(ty), INTENT(INOUT):: dmy
        END SUBROUTINE

        SUBROUTINE dest_arr(dmy)
        TYPE(ty), INTENT(INOUT):: dmy(:)
        counter = counter + 1
        IF ( dmy(1)%ii .EQ. ( 100*counter)) THEN
            PRINT*, counter,' destructor call PASS ', dmy
        ELSE
            PRINT*, counter,' destructor call FAIL ', dmy
        END IF
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    INTEGER :: res = 0, n = 2
    TYPE(ty), POINTER :: ty_obj(:)
    ALLOCATE(ty_obj(4))
    ty_obj(1)%ii = 100
    ty_obj(2)%ii = 100
    ty_obj(3)%ii = 100
    ty_obj(4)%ii = 100
    res = Foo(ty_obj, n)
    DEALLOCATE(ty_obj)
    IF(res .EQ. 100) PRINT*,res
    CONTAINS
        INTEGER FUNCTION Foo( ty_dmy, n_dmy )
            INTEGER, INTENT(IN):: n_dmy
            TYPE(ty), INTENT(OUT):: ty_dmy(n_dmy - 1:n_dmy)
            ty_dmy(1)%ii = 200
            ty_dmy(2)%ii = 200
            Foo = ty_dmy(2)%ii
         END FUNCTION
 END PROGRAM