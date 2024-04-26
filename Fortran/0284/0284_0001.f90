MODULE mod1
IMPLICIT NONE
    TYPE ty
    INTEGER :: ii = 10
    CONTAINS
         FINAL::destructor 
    END TYPE

    CONTAINS
        ELEMENTAL SUBROUTINE destructor(dmy)
            TYPE(ty), INTENT(INOUT):: dmy
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    TYPE(ty) :: ty_obj1(10), ty_obj2
    ty_obj2%ii = 20
    ty_obj1 = ty_obj2
    IF( ty_obj1(2)%ii .EQ. 20) then 
        PRINT*, 'pass'
    ELSE
        PRINT*, 'fail'
    ENDIF
END PROGRAM
