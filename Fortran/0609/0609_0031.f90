MODULE mod1
IMPLICIT NONE
    INTEGER :: a = 2, b = 5, c = 3, counter = 0
TYPE my
  INTEGER(kind=8)::kk=80
  CONTAINS
  FINAL::final_my
END TYPE
    TYPE ty
        INTEGER(kind=8) :: ii = 10
        TYPE(my),allocatable :: alloc
        CONTAINS
           FINAL::dest_2Darr
           FINAL::dest_arr
           FINAL::dest
     END TYPE

     TYPE ty1
        INTEGER :: jj = 20
        TYPE(ty) :: ty_cmp(2, 2)
     END TYPE

    CONTAINS
        SUBROUTINE final_my(dmy)
            TYPE(my), INTENT(INOUT):: dmy
            PRINT*,'i am in my destructor'
            PRINT*,dmy%kk
        END SUBROUTINE
        SUBROUTINE dest_2Darr(dmy)
            TYPE(ty), INTENT(INOUT):: dmy(:,:)
            counter = counter + 1
            IF ( dmy(1,1)%ii .EQ. (100*counter) ) THEN
                PRINT*, counter,' destructor call PASS ', dmy%ii
            ELSE
                PRINT*, counter,' destructor call FAIL ', dmy%ii
            END IF
        END SUBROUTINE
        SUBROUTINE dest_arr(dmy)
            TYPE(ty), INTENT(INOUT):: dmy(:)
            counter = counter + 1
            IF ( dmy(1)%ii .EQ. (100*counter) ) THEN
               PRINT*, counter,' destructor call PASS ', dmy%ii
            ELSE
               PRINT*, counter,' destructor call FAIL ', dmy%ii
            END IF
        END SUBROUTINE
        SUBROUTINE dest(dmy)
            TYPE(ty), INTENT(INOUT):: dmy
            counter = counter + 1
            IF ( dmy%ii .EQ. (100*counter) ) THEN
               PRINT*, counter,' destructor call PASS ', dmy%ii
            ELSE
               PRINT*, counter,' destructor call FAIL ', dmy%ii
            END IF
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    TYPE(ty1) :: ty1_obj
    call special
    ty1_obj%ty_cmp(1, 1)%ii = 100
    ty1_obj%ty_cmp(2, 1)%ii = 100
    ALLOCATE(ty1_obj%ty_cmp(1,1)%alloc)    
    ALLOCATE(ty1_obj%ty_cmp(1,2)%alloc)    
    ALLOCATE(ty1_obj%ty_cmp(2,1)%alloc)    
    ALLOCATE(ty1_obj%ty_cmp(2,2)%alloc)    
    CALL Foo(ty1_obj%ty_cmp)
    CONTAINS
        SUBROUTINE Foo( ty_dmy )
            CLASS(ty), INTENT(OUT):: ty_dmy(a:2, 2:c)
            ty_dmy(a, c)%ii = 200
            CALL Foo1(ty_dmy(a,3))
        END SUBROUTINE
        SUBROUTINE Foo1( ty_dmy1 )
            CLASS(ty), INTENT(OUT):: ty_dmy1
            ty_dmy1%ii = 300
            CALL Foo2(ty_dmy1)
        END SUBROUTINE
        SUBROUTINE Foo2( ty_dmy2)
            CLASS(ty), INTENT(OUT):: ty_dmy2
            ty_dmy2%ii = 400
        END SUBROUTINE
END PROGRAM
subroutine    special
print *,'1  destructor call PASS  100 100'
print *,'2  destructor call PASS  200'
print *,'3  destructor call PASS  300'
stop
end
