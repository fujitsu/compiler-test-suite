MODULE mod1
IMPLICIT NONE
    TYPE ty
    INTEGER :: ii = 10
    CONTAINS
         FINAL::destructor 
    END TYPE

    CONTAINS
        SUBROUTINE destructor(dmy)
            TYPE(ty), INTENT(INOUT):: dmy(10)
            print*, 'destructor call & dmy(1)%ii =', dmy(1)%ii
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    TYPE(ty) :: ty_obj1(10), ty_obj2(2)
    ty_obj2(1)%ii = 20
    ty_obj2(2)%ii = 20
    ty_obj1 = ty_obj2(1)
    IF( ty_obj1(2)%ii .EQ. 20) then 
        PRINT*, 'pass'
    ELSE
        PRINT*, 'fail'
    ENDIF
END PROGRAM
