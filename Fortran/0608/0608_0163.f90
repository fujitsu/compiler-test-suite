MODULE mod1
IMPLICIT NONE
 INTEGER :: COUNTER=0
    TYPE ty
        INTEGER :: ii = 10
        CONTAINS
            FINAL::dest_arr
    END TYPE ty

    CONTAINS
        SUBROUTINE dest_arr( dmy )
            IMPLICIT NONE
            TYPE(ty), INTENT(INOUT):: dmy(:)
            COUNTER=COUNTER+10
        END SUBROUTINE 
END MODULE mod1

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    
    PRINT *,Foo()
    IF(COUNTER > 0) PRINT*, "PASS"
 
    CONTAINS
        FUNCTION Foo()RESULT(ty_res)
            IMPLICIT NONE
            TYPE(ty) :: ty_res(2)
            ty_res%ii = 100
        END FUNCTION Foo
END PROGRAM MAIN
