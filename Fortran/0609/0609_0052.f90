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
            IF ( dmy%ii .EQ. (100*counter ) ) THEN
               PRINT*, counter,' destructor call PASS ', dmy%ii
            ELSE
               PRINT*, counter,' destructor call FAIL ', dmy%ii
            END IF
        END SUBROUTINE
        SUBROUTINE dest_arr(dmy)
            TYPE(ty), INTENT(INOUT):: dmy(:)
            PRINT*,'FAIL'
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    TYPE(ty)  :: ty_obj1
    CLASS(ty), ALLOCATABLE  :: ty_obj2
    CLASS(ty), ALLOCATABLE  :: ty_obj3
    CLASS(ty), ALLOCATABLE  :: ty_obj4
    INTERFACE
        FUNCTION Foo(dmy1, dmy2, dmy3)
           import ty
           TYPE(ty) :: Foo
           CLASS(*), INTENT(OUT):: dmy1, dmy2, dmy3
         END
    END INTERFACE
    ALLOCATE(ty_obj2,ty_obj3)
    ALLOCATE(ty_obj4)
    ty_obj1%ii = 400
    ty_obj2%ii = 100
    ty_obj3%ii = 200
    ty_obj4%ii = 300
    ty_obj1 =  Foo(ty_obj2, ty_obj3, ty_obj4)
    IF( ty_obj1%ii .EQ. 10 ) PRINT*,'ERROR'
    DEALLOCATE(ty_obj3)
    DEALLOCATE(ty_obj4)
 END PROGRAM

 FUNCTION Foo(dmy1, dmy2, dmy3)
    use mod1
    TYPE(ty):: Foo
    CLASS(*), INTENT(OUT):: dmy1, dmy2, dmy3
    SELECT TYPE(dmy1)
      TYPE IS(ty)
        dmy1%ii = 1
        SELECT TYPE(dmy3)
          TYPE IS(ty)
            dmy3%ii = 700
            SELECT TYPE(dmy2)
              TYPE IS(ty)
                dmy2%ii = 600
                Foo%ii = 500
            END SELECT
        END SELECT
    END SELECT
 END
