MODULE mod1
IMPLICIT NONE
INTEGER :: i = 10, j = 5, counter = 0
    TYPE ty
    INTEGER :: ii = 10
    CONTAINS
         FINAL::dest_ele
         FINAL::dest_2D_arr
    END TYPE

    CONTAINS
        ELEMENTAL SUBROUTINE dest_ele( dmy )
            TYPE(ty), INTENT(INOUT):: dmy
        END SUBROUTINE

        SUBROUTINE dest_2D_arr(dmy)
        TYPE(ty), INTENT(INOUT):: dmy(: , :)
        counter = counter + 1
        IF ( dmy(1,1)%ii .EQ. (100*counter) ) THEN
           PRINT*, counter,' destructor call PASS ', dmy
        ELSE
           PRINT*, counter,' destructor call FAIL ', dmy
        END IF
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    INTEGER :: res = 0, n = 2, m = 4
    TYPE(ty), ALLOCATABLE :: ty_obj(:,:)
    ALLOCATE(ty_obj(4,5))
    FORALL (i = 1:4, j = 1:5) ty_obj(i, j)%ii = 100
    res = Foo( ty_obj, n, m)
    DEALLOCATE(ty_obj)
    IF(res .EQ. 100) PRINT*,res
    CONTAINS
        INTEGER FUNCTION Foo( ty_dmy, n_dmy, m_dmy )
            INTEGER, INTENT(IN):: n_dmy, m_dmy
            TYPE(ty), INTENT(OUT):: ty_dmy(n_dmy: n_dmy, m_dmy)
            ty_dmy%ii = 200
            Foo = 200
        END FUNCTION
 END PROGRAM
