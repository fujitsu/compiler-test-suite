MODULE mod1
IMPLICIT NONE
    INTEGER :: counter = 0
    TYPE ty
    INTEGER :: ii = 10
    CONTAINS
         FINAL::dest
    END TYPE
    CONTAINS
        SUBROUTINE dest(dmy)
            TYPE(ty), INTENT(INOUT):: dmy
            counter = counter + 1
            IF ( (dmy%ii .EQ. 100) .OR. (dmy%ii .EQ. 200) ) THEN
                PRINT*,counter,' destructor call PASS ', dmy%ii
            ELSE
                PRINT*,counter,' destructor call FAIL ', dmy%ii
            END IF
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    INTEGER :: res = 0
    class(ty), ALLOCATABLE :: ty_obj
    ALLOCATE(ty_obj)
    ty_obj%ii = 100
    res = Foo(ty_obj)
    DEALLOCATE(ty_obj)
    IF(res .EQ. 500) PRINT*,res
    CONTAINS
        INTEGER FUNCTION Foo( ty_dmy )
            class(ty),INTENT(OUT):: ty_dmy
            ty_dmy%ii = 200
            Foo = ty_dmy%ii
        END FUNCTION
 END PROGRAM
