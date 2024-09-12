MODULE mod1
IMPLICIT NONE
    INTEGER :: a = 2, b = 5, c = 3, counter = 0
    TYPE ty
    INTEGER :: ii = 10
    CONTAINS
         FINAL::dest_2Darr
         FINAL::dest_arr
         FINAL::dest
    END TYPE

    CONTAINS
        SUBROUTINE dest_2Darr(dmy)
            TYPE(ty), INTENT(INOUT):: dmy(:,:)
            counter = counter + 1
            IF ( dmy(1,1)%ii .EQ. (100*counter) ) THEN
               PRINT*, counter,' destructor call PASS ', dmy
            ELSE
               PRINT*, counter,' destructor call FAIL ', dmy
            END IF
        END SUBROUTINE
        SUBROUTINE dest_arr(dmy)
            TYPE(ty), INTENT(INOUT):: dmy(:)
            counter = counter + 1
            IF ( dmy(1)%ii .EQ. (100*counter) ) THEN
               PRINT*, counter,' destructor call PASS ', dmy
            ELSE
               PRINT*, counter,' destructor call FAIL ', dmy
            END IF
        END SUBROUTINE
        SUBROUTINE dest(dmy)
            TYPE(ty), INTENT(INOUT):: dmy
            counter = counter + 1
            IF ( dmy%ii .EQ. (100*counter) ) THEN
               PRINT*, counter,' destructor call PASS ', dmy
            ELSE
               PRINT*, counter,' destructor call FAIL ', dmy
            END IF
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
  IMPLICIT NONE
    TYPE(ty), ALLOCATABLE :: ty_obj(:,:)
    TYPE(ty) :: ty_obj2(2)
    ALLOCATE(ty_obj(3, 3))
    ty_obj(2, 2)%ii = 100
    ty_obj(3, 2)%ii = 100
    ty_obj(2, 3)%ii = 100
    ty_obj(3, 3)%ii = 100
    CALL Foo(ty_obj(a:3:(c - a), 2:c:(c-a)), ty_obj2)
    ty_obj(1,1)%ii = 400
    DEALLOCATE(ty_obj)
    CONTAINS
        SUBROUTINE Foo( ty_dmy, ty_tmp )
            CLASS(ty), INTENT(OUT):: ty_dmy(2, a)
            TYPE(ty):: ty_tmp(2)
            ty_dmy(c-a, 1)%ii = 200
            ty_tmp%ii = 200
            CALL Foo1(ty_tmp)
            ty_dmy(1, 1)%ii = ty_tmp(1)%ii
        END SUBROUTINE
        SUBROUTINE Foo1( ty_dmy1 )
            TYPE(ty), INTENT(OUT):: ty_dmy1(40:41)
            ty_dmy1(40)%ii = 300
            ty_dmy1(41)%ii = 300
            CALL Foo2(ty_dmy1(40))
        END SUBROUTINE
        SUBROUTINE Foo2( ty_dmy2)
            CLASS(ty), INTENT(OUT):: ty_dmy2
              SELECT TYPE(ty_dmy2)
                TYPE IS(ty)
                  ty_dmy2%ii = 400
              END SELECT
        END SUBROUTINE
 END PROGRAM
