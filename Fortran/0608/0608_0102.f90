MODULE mod1
IMPLICIT NONE
    INTEGER :: i = 1, counter = 0
    TYPE ty
    INTEGER :: ii = 10
    CONTAINS
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
    TYPE(ty), POINTER :: ty_obj(:)
    ALLOCATE(ty_obj(2))
    ty_obj(1)%ii = 100
    ty_obj(2)%ii = 100
    IF(Foo(ty_obj)) PRINT*,'ERROR'

    CONTAINS
        LOGICAL FUNCTION Foo( ty_dmy )
            TYPE(ty), INTENT(OUT):: ty_dmy(i + 1: i + 1)
            ty_dmy(2)%ii = 200
            Foo = .FALSE.
         END FUNCTION
 END PROGRAM
