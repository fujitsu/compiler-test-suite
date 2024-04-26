MODULE mod1
IMPLICIT NONE
    TYPE ty0
    INTEGER :: ii = 10
    CONTAINS
         FINAL::destructor 
    END TYPE

    TYPE ty1
    INTEGER :: jj = 10
    TYPE(ty0) :: obj
    END TYPE
        
    CONTAINS
        SUBROUTINE destructor(dmy)
            TYPE(ty0), INTENT(INOUT):: dmy
            print*, 'destructor call & dmy%ii =', dmy%ii
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    TYPE(ty1) :: ty_obj1,ty_obj2
    ty_obj2%obj%ii = 20
    ty_obj1 = ty_obj2
    IF( ty_obj1%obj%ii .EQ. 20) then 
        PRINT*, 'pass'
    ELSE
        PRINT*, 'fail'
    ENDIF
END PROGRAM
