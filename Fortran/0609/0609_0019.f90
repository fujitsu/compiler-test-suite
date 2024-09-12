MODULE mod1
   IMPLICIT NONE
    INTEGER :: counter = 0
    TYPE ty
    INTEGER :: ii = 10
    CONTAINS
         FINAL::dest_arr
         FINAL::dest
    END TYPE

    CONTAINS
        SUBROUTINE dest_arr( dmy )
            TYPE(ty), INTENT(INOUT):: dmy(*)
            PRINT*,'FAIL', dmy(1)%ii
        END SUBROUTINE
        SUBROUTINE dest(dmy)
        TYPE(ty), INTENT(INOUT):: dmy
        counter = counter + 1
        IF( (dmy%ii .EQ. 100) .OR. (dmy%ii .EQ. 200)) THEN 
           PRINT*,counter,' destructor call PASS', dmy%ii 
        ELSE 
           PRINT*,counter,' destructor call FAIL', dmy%ii
        END IF
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    INTEGER :: res = 0
    CLASS(ty),ALLOCATABLE :: ty_obj
    ALLOCATE(ty_obj)
    ty_obj%ii = 100
    res = Foo(ty_obj)
    IF(res .EQ. 500) PRINT*,res
    CONTAINS
        INTEGER FUNCTION Foo( ty_dmy )
           CLASS(ty),INTENT(OUT):: ty_dmy
           TYPE(ty):: ty_obj
           ty_obj%ii = 200
           if(ty_obj%ii .NE. 200) PRINT*,ty_obj
           ty_dmy%ii = 200
           Foo = ty_dmy%ii
         END FUNCTION
END PROGRAM
