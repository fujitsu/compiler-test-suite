MODULE mod1
IMPLICIT NONE
    INTEGER:: a = 2, b = 5, c = 3, counter = 0
    TYPE ty
    INTEGER :: ii = 10
    CONTAINS
         FINAL::dest_1D_arr, dest_2D_arr
         FINAL::dest
    END TYPE

    TYPE ty1
        TYPE(ty):: ty_cmp(2)
    END TYPE

    CONTAINS
        SUBROUTINE dest_1D_arr( dmy )
            TYPE(ty), INTENT(INOUT):: dmy(:)
            counter = counter + 1
            IF ( dmy(1)%ii .EQ. (100*counter) ) THEN
                PRINT*, counter,' 1st-destructor call PASS ', dmy
            ELSE
                PRINT*, counter,' 1st-destructor call FAIL ', dmy
            END IF
        END SUBROUTINE
        SUBROUTINE dest( dmy )
            IMPLICIT NONE
            TYPE(ty), INTENT(INOUT):: dmy
            counter = counter + 1
            IF ( dmy%ii .EQ. (100*counter) ) THEN
               PRINT*, counter,' 2nd-destructor call PASS ', dmy
            ELSE
               PRINT*, counter,' 2nd-destructor call FAIL ', dmy
            END IF
        END SUBROUTINE
        SUBROUTINE dest_2D_arr( dmy )
            IMPLICIT NONE
            TYPE(ty), INTENT(INOUT):: dmy(:,:)
            counter = counter + 1
            IF ( dmy(1, 1)%ii .EQ. (100*counter) ) THEN
                PRINT*, counter,' 3rd-destructor call PASS ', dmy
            ELSE
                PRINT*, counter,' 3rd-destructor call FAIL ', dmy
            END IF
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE

    TYPE(ty):: ty_obj1(3)
    TYPE(ty1), ALLOCATABLE :: ty1_obj2(:,:)
    TYPE(ty), ALLOCATABLE:: ty_obj3(:, :)
    INTERFACE 
        SUBROUTINE Foo( ty_dmy, ty1_dmy1, ty_dmy2)
            IMPORT ty,ty1, a, b
            TYPE(ty), INTENT(OUT):: ty_dmy(a:b- 2 )
            TYPE(ty1), INTENT(OUT):: ty1_dmy1(:,:)
            TYPE(ty), INTENT(OUT):: ty_dmy2(a:b - a, b - a: b- a)
        END SUBROUTINE
    END INTERFACE
    ALLOCATE(ty1_obj2(2,3))
    ALLOCATE(ty_obj3(2, 3))
    ty_obj1(1)%ii = 100
    ty_obj1(2)%ii = 100
    ty_obj1(3)%ii = 100
    ty1_obj2(2, 2)%ty_cmp%ii = 200
    ty1_obj2(2, 3)%ty_cmp%ii = 300
    ty_obj3(1, 1)%ii = 400
    ty_obj3(2, 1)%ii = 400
    ty_obj3(1, 2)%ii = 400
    ty_obj3(2, 2)%ii = 400
    CALL Foo(ty_obj1, ty1_obj2(2:a:1, a:c:1), ty_obj3)

END PROGRAM
SUBROUTINE Foo( ty_dmy, ty1_dmy1, ty_dmy2)
  use mod1
  TYPE(ty), INTENT(OUT):: ty_dmy(a:b - 2 )
  TYPE(ty1), INTENT(OUT):: ty1_dmy1(:, :)
  TYPE(ty), INTENT(OUT):: ty_dmy2(a:b - a, b - a: b- a)

  ty_dmy(2)%ii = 1
  ty1_dmy1(1, 1)%ty_cmp(1)%ii = 2
  ty_dmy2(2, 3)%ii = 3
END SUBROUTINE

