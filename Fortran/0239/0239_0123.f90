MODULE mod1
IMPLICIT NONE
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
            ELSE
                PRINT*, counter,' destructor call FAIL ', dmy
            END IF
        END SUBROUTINE
        SUBROUTINE dest(dmy)
            TYPE(ty), INTENT(INOUT):: dmy
        print *,'Scalar'
            counter = counter + 1
            PRINT*, counter,' destructor call FAIL ', dmy
        END SUBROUTINE
END MODULE

subroutine s1
    USE mod1
    CLASS(ty), POINTER  :: ty_obj(:)
    ALLOCATE(ty_obj(2))
    ty_obj%ii = 100
    DEALLOCATE(ty_obj)
end
call s1
print *,'pass'
 END PROGRAM
