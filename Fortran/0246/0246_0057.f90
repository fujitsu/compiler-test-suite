MODULE mod1
IMPLICIT NONE
    INTEGER :: a = 2, b = 5, c = 3, counter = 0

    TYPE elements
        INTEGER :: el
    END TYPE
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
              IF(dmy(1,1) % ii .EQ. 400 .AND. counter ==2) THEN
                 PRINT*, counter,' destructor call PASS', dmy
              ELSE
                 PRINT*, counter,' destructor call FAIL', dmy
              END IF
            END IF
        END SUBROUTINE
        PURE SUBROUTINE dest_arr(dmy)
            TYPE(ty), INTENT(IN) :: dmy(:)
        END SUBROUTINE
        PURE SUBROUTINE dest(dmy)
            TYPE(ty), INTENT(INOUT):: dmy
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    TYPE(ty), ALLOCATABLE :: ty_obj(:,:)
    ALLOCATE(ty_obj(2, 3))
    ty_obj(1, 1)%ii = 100
    ty_obj(2, 1)%ii = 100
    ty_obj(1, 2)%ii = 100
    ty_obj(2, 2)%ii = 100
    CALL Foo(ty_obj)
    DEALLOCATE(ty_obj)
    CONTAINS
        SUBROUTINE Foo( ty_dmy )
            TYPE(ty), INTENT(OUT):: ty_dmy(a:3, a:c)
            ty_dmy(a, 2)%ii = 200
            DO CONCURRENT(K=1:3,L=2:3)
              DO CONCURRENT(M=2:4,K==L .AND. K==M)
                  CALL Foo1(ty_dmy(a, a))
              END DO
            END DO
        END SUBROUTINE
        PURE SUBROUTINE Foo1( ty_dmy1 )
            TYPE(ty), INTENT(OUT):: ty_dmy1
            ty_dmy1%ii = 300
            CALL Foo2(ty_dmy1)
        END SUBROUTINE
        PURE SUBROUTINE Foo2( ty_dmy2)
            TYPE(ty), INTENT(OUT):: ty_dmy2
            ty_dmy2%ii = 400
        END SUBROUTINE
 END PROGRAM
