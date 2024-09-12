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
        SUBROUTINE dest(dmy)
            TYPE(ty), INTENT(INOUT):: dmy
            counter = counter + 1 
            IF ( dmy%ii .EQ. (100*counter) )THEN
                 PRINT*,counter,' destructor call PASS ', dmy%ii
            ELSE
                 PRINT*,counter,' destructor call FAIL ', dmy%ii
            END IF
        END SUBROUTINE
        SUBROUTINE dest_arr(dmy)
            TYPE(ty), INTENT(INOUT):: dmy(:)
            PRINT*,'FAIL'
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    CLASS(ty),ALLOCATABLE  :: ty_obj1, ty_obj2
    TYPE(ty)   :: ty_obj3
    INTERFACE
        FUNCTION ADD(L, R) RESULT(res)
           import ty
           TYPE(ty) :: res
           CLASS(ty), INTENT(IN) :: L
           CLASS(*), INTENT(OUT):: R
         END 
    END INTERFACE
    ALLOCATE(ty_obj1,ty_obj2)
    ty_obj1%ii = 20
    ty_obj2%ii = 100
    ty_obj3%ii = 200
    ty_obj3 =  ADD(ty_obj1, ty_obj2)
    IF(ty_obj3%ii .EQ. 100) PRINT*,ty_obj3%ii
 END PROGRAM

 FUNCTION ADD(L, R) result(res)
    use mod1
    TYPE(ty):: res
    CLASS(ty), INTENT(IN):: L
    CLASS(*), INTENT(OUT):: R
    SELECT TYPE(R)
      TYPE IS(ty)
        R%ii = 400
        res%ii = 300
    END SELECT
 END
