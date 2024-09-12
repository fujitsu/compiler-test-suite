MODULE mod1
IMPLICIT NONE
    INTEGER :: counter = 0
    TYPE ty
    INTEGER :: ii = 10
    CONTAINS
         FINAL::dest_arr
    END TYPE

    CONTAINS

        SUBROUTINE dest_arr(dmy)
        TYPE(ty), INTENT(INOUT):: dmy(*)
        counter = counter + 1
        IF ( dmy(1)%ii .EQ. (100*counter)) THEN
           PRINT*, counter,' destructor call PASS ', dmy(1)%ii,' ',dmy(2)%ii
        ELSE
           PRINT*, counter,' destructor call FAIL ', dmy(1)%ii,' ',dmy(2)%ii
        END IF
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    INTEGER :: res = 0
    TYPE(ty) :: ty_obj(2)
    ty_obj(1)%ii = 100
    ty_obj(2)%ii = 100
    res = Foo(ty_obj)
    IF(res .EQ. 100) PRINT*,res
    CONTAINS
        INTEGER FUNCTION Foo( ty_dmy )
            TYPE(ty), INTENT(OUT):: ty_dmy(2)
            ty_dmy(1)%ii = 200
            ty_dmy(2)%ii = 200
            Foo = ty_dmy(1)%ii
         END FUNCTION
 END PROGRAM
